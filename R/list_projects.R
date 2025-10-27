# Generated automatically. See README before editing.

#' List Projects
#'
#' Returns **projects which the current user has explicit permission to access, with fields options.** Note that, for performance reasons, in returned ProjectModels, field 'highest_rank' is NOT valued (unlike in simple query). The same information can be found in 'managers', 'annotators' and 'viewers' lists.
#'
#' @param project_ids string; Limit the list to a set of ids.
#' @param not_granted boolean; Return projects on which the current user has _no permission_, but visible to him/her.
#' @param for_managing boolean; Return projects that can be written to (including erased) by the current user.
#' @param order_field string; One of ['projid', 'title', 'access', 'status', 'objcount', 'pctvalidated', 'pctclassified', 'classifsettings', 'classiffieldlist', 'popoverfieldlist', 'comments', 'rf_models_used', 'cnn_network_id', 'formulae', 'instrument', 'instrument_url', 'highest_right']
#' @param fields string; Return the default fields (typically used in conjunction with an additional field list). For users list display purpose.
#' @param window_start integer; Skip `window_start` before returning data.
#' @param window_size integer; Return only `window_size` lines.
#'
#' @export
list_projects <- function(project_ids = NULL, not_granted = NULL, for_managing = NULL, order_field = NULL, fields = NULL, window_start = NULL, window_size = NULL) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects", query_string(project_ids = project_ids, not_granted = not_granted, for_managing = for_managing, order_field = order_field, fields = fields, window_start = window_start, window_size = window_size))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
