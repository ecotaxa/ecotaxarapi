library("jsonlite")
library("glue")
library("stringr")
library("styler")

## Prepare (load API description, define functions)  ----

# load API description
# api <- fromJSON("https://ecotaxa.obs-vlfr.fr/api/api/openapi.json", simplifyDataFrame=F, simplifyVector=F)
api <- fromJSON("tools/openapi.json", simplifyDataFrame=F, simplifyVector=F)

# Extract elements from a list, as a vector
get_elements <- function(x, id) { sapply(x, getElement, id) }
gel <- get_elements

# Get last element, fast
last <- function(x) { x[length(x)] }

# Get list of requested properties for an endpoint
get_request_properties <- function(x, api) {
  path_to_schema <- x$requestBody$content$`application/json`$schema$`$ref`
  schema_name <- last(strsplit(path_to_schema, "/")[[1]])
  properties <- api$components$schemas[[schema_name]]$properties
  return(properties)
}

# Get all arguments for an endpoint
get_args <- function(x, api) {
  if (is.null(x$parameters)) {
    params <- NULL
  } else {
    # get relevant pieces of parameters
    params <- lapply(x$parameters, function(p) {
      p$type <- p$schema$type
      p <- p[c("name", "type", "description", "example", "required", "in")]
      return(p)
    })
    names(params) <- gel(params, "name")
  }

  if (is.null(x$requestBody)) {
    properties <- NULL
  } else {
    # get needed properties
    properties <- get_request_properties(x, api)
    # get properties to look like parameters
    # add name
    for (n in names(properties)) {
      properties[[n]]$name <- n
    }
    properties <- lapply(properties, function(p, req) {
        p <- p[c("name", "type", "description", "example")]
        p$required <- FALSE
        # p$required <- req
        p$`in` <- "body"
        return(p)
      }, req=x$requestBody$required)
  }

  args <- c(params, properties)
  return(args)
}

# Remove unwanted elements from character string
clean_string <- function(x) {
  x %>%
    str_replace_all("\n", " ") %>% # remove line breaks
    str_replace_all(" +", " ")     # remove multiple spaces
}

## Parse/explore API ---

# names(api$paths)
# str(api$paths[11], 3)
# api$paths[[11]]$get$parameters
# str(api$components$schemas, 1)
# api$components$schemas$UserModel
# api$paths


## Create functions ----

count <- 1

paths <- names(api$paths)
for (path in paths[1:20]) {
# path <- "/login" # parameters, 2
# path <- "/users/me"  # nothing
# path <- "/object/{object_id}" # parameters, 1
# path <- "/object_set/{project_id}/query" # parameters, 5 + requestBody
  methods <- names(api$paths[[path]])
  for (method in methods) {
    # get endpoint description from API object
    x <- api$paths[[path]][[method]]
    args <- get_args(x, api)

    # inform the user
    message(count, ": ", method, " ", path, " -> ", x$operationId)

    ## define warning message ----
    mess <- c("# Generated automatically. See README before editing.", "")

    ## define documentation ----
    doc <- c(
      x$summary,
      "",
      clean_string(x$description),
      "",
      if (!is.null(args)) {
        str_c(
          "@param ",
          gel(args, "name"), " ",
          gel(args, "type"), "; ",
          clean_doc_string(gel(args, "description"))
        )
      },
      "",
      "@export"
    )

    ## define call ----
    call <- str_c(
        x$operationId, " <- function(",
        str_c(gel(args, "name"), ifelse(gel(args, "required"), "", "=NULL"), collapse=", "),
        ") {"
      )

    ## define body ----
    # if (count ==5) browser()
    body <- c(
      # prepare request body if needed
      if (!is.null(x$requestBody)) {
        request_body_args <- names(args[gel(args, "in") == "body"])
        c(
          "# convert body to json ourselves, to control the settings",
          "# this is based on the httr defaults with some additions",
          str_c("request_body <- list(", str_c(request_body_args, "=", request_body_args, collapse=", "), ")"),
         "request_body_json <- jsonlite::toJSON(request_body, auto_unbox=TRUE, digits=22, null='null')"
        )
      },

      # HTTP function
      "handle_api_response(",
      str_c("httr::", str_to_upper(method), "("),

      # URL
      { #browser()
      url_args <- gel(args, "name")[gel(args, "in") == "path"]
      url_args_list <- as.list(str_c("', ", url_args, ", '"))
      names(url_args_list) <- url_args
      path_piece <- with(url_args_list, glue(path))

      query_args <- gel(args, "name")[gel(args, "in") == "query"]
      if (length(query_args) > 0) {
        query_piece <- str_c("query_string(", str_c(query_args, "=", query_args, collapse=","), ")")
      } else {
        query_piece <- ""
      }

      str_c("url=paste0(api_url(), '", path_piece, "', ", query_piece, ")")
      },

      # add body to request if needed
      if (!is.null(x$requestBody)) {
        str_c("body=request_body_json, encode='raw',")
      },

      # HTTP usual arguments
      # TODO omit this for login or other not requiring authorization
      if (path != "/login") {
        "httr::add_headers(Authorization=paste0('Bearer ', api_token())),"
      },
      "config=httr::config(ssl_verifypeer=FALSE)",
      ")",
      ")"
    )

    # TODO allow to get the raw output
    # TODO upgrade to new version of httr

    ## write function to file ----
    function_file <- str_c("R/", x$operationId, ".R")
    c(
      mess,
      str_c("#' ", doc),
      call,
      body,
      "}"
    ) %>%
      style_text() %>%
      cat(file=function_file, sep="\n")

    count <- count+1
  }
}

