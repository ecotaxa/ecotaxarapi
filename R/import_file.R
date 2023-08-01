# Generated automatically. See README before editing.

#' Import File
#'
#' **Validate or do a real import** of an EcoTaxa archive or directory.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param source_path string; Source path on server, to zip or plain directory. The path can be returned by a file upload (absolute), otherwise it's relative to shared file area root.
#' @param taxo_mappings object; Optional taxonomy mapping, the key specifies the taxonomy ID found in file and the value specifies the final taxonomy ID to write.
#' @param skip_loaded_files boolean; If true skip loaded files, else don't.
#' @param skip_existing_objects boolean; If true skip existing objects, else don't.
#' @param update_mode string; Update data ('Yes'), including classification ('Cla').
#'
#' @export
import_file <- function(project_id, source_path = NULL, taxo_mappings = NULL, skip_loaded_files = NULL, skip_existing_objects = NULL, update_mode = NULL) {
  request_body <- list(source_path = source_path, taxo_mappings = taxo_mappings, skip_loaded_files = skip_loaded_files, skip_existing_objects = skip_existing_objects, update_mode = update_mode)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/file_import/", project_id, "")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
