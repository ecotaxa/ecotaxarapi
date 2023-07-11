# Generated automatically. See README before editing.

#' Create Collection
#'
#' **Create a collection** with at least one project inside. Returns the created collection Id. Note: 'manage' right is required on all underlying projects.
#'
#' @param title string; The collection title.
#' @param project_ids array; The list of composing project IDs.
#'
#' @export
create_collection <- function(title = NULL, project_ids = NULL) {
  # convert body to json ourselves, to control the settings
  # this is based on the httr defaults with some additions
  request_body <- list(title = title, project_ids = project_ids)
  request_body_json <- jsonlite::toJSON(request_body, auto_unbox = TRUE, digits = 22, null = "null")
  handle_api_response(
    httr::POST(
      url = paste0(api_url(), "/collections/create"),
      body = request_body_json, encode = "raw",
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
