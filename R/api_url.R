#' Get the base URL of EcoTaxa's API
#'
#' @details The url is "https://ecotaxa.obs-vlfr.fr/api/" by default but can be changed with the option `ecotaxa.url`
#' @export
#' @examples
#' api_url()
#' # set a new default
#' options(ecotaxa.url="https://ecotaxa.somewhere.edu/api/")
#' api_url()
#' # remove the option
#' options(ecotaxa.url=NULL)
#' api_url()
api_url <- function() {
  url <- getOption("ecotaxa.url")
  # TODO look at ways to save this
  if (is.null(url)) {
    url <- "https://ecotaxa.obs-vlfr.fr/api/"
  }
  return(url)
}

#
#' Build a query with parameters
#'
#' @param ... named arguments to be turned into query parameters.
#'
#' @examples
#' query_string(foo="a", bar=NULL, bob=1)
query_string <- function(...) {
  params <- list(...)
  # check
  if (any(names(params) == "")) {
    stop("Query parameters must have names")
  }
  pieces <- sapply(names(params), function(key) {
    val <- params[[key]]
    # TODO deal with vector values
    if (is.null(val)) {
      # null parameters are not in the query
      piece <- NA
    } else {
      # build this piece of the query
      piece <- str_c(key, "=", val)
    }
    return(piece)
  })
  # remove NULL parameters
  pieces <- na.omit(pieces)
  # combine pieces
  query <- str_c("?", str_c(pieces, collapse="&"))
  return(query)
}
