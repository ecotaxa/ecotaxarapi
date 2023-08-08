# Generated automatically. See README before editing.

#' Import File
#'
#' **Validate or do a real import** of an EcoTaxa archive or directory.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param ImportReq Output of ImportReq(); Import request, from UI choices.
#'
#' @export
import_file <- function(project_id, ImportReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/file_import/", project_id, "")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ImportReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
