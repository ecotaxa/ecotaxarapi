# Generated automatically. See README before editing.

#' Export Object Set Backup
#'
#' Start a backup export job for the given object set and options. If filters are empty, the produced zip will contain the full project. 🔒 Current user needs *at least Read* right on the requested project.
#'
#' @param Body_export_object_set_backup_object_set_export_backup_post Output of [Body_export_object_set_backup_object_set_export_backup_post()];
#'
#' @export
export_object_set_backup <- function(Body_export_object_set_backup_object_set_export_backup_post) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/export/backup")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(Body_export_object_set_backup_object_set_export_backup_post) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
