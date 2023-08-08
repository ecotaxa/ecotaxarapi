# Generated automatically. See README before editing.

#' Direct Db Query
#'
#' For making selects on the DB. 🔒 Admin only.
#'
#' @param q string; The SQL to execute.
#'
#' @export
db_direct_query <- function(q) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/admin/db/query", query_string(q = q))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
