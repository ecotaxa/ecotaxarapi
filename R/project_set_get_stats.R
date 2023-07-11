# Generated automatically. See README before editing.

#' Project Set Get Stats
#'
#' **Returns projects statistics**, i.e. used taxa and classification states.
#'
#' @param ids string; String containing the list of one or more id separated by non-num char. **If several ids are provided**, one stat record will be returned per project.
#' @param taxa_ids string; **If several taxa_ids are provided**, one stat record will be returned per requested taxa, if populated. **If taxa_ids is all**, all valued taxa in the project(s) are returned.
#'
#' @export
project_set_get_stats <- function(ids, taxa_ids = NULL) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/project_set/taxo_stats"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
