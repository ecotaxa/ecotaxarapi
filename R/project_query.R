# Generated automatically. See README before editing.

#' Project Query
#'
#' **Returns project** if it exists for current user, eventually for managing it.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param for_managing boolean; For managing this project.
#'
#' @export
project_query <- function(project_id, for_managing = NULL) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/projects/{project_id}"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
