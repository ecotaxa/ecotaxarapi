# Generated automatically. See README before editing.

#' Direct Db Query
#'
#' For making selects on the DB. 🔒 Admin only.
#'
#' @param q string; The SQL to execute.
#'
#' @export
db_direct_query <- function(q) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "admin", "db", "query") %>%
      httr2::req_url_query(q = q) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
