# Generated automatically. See README before editing.

#' Search Projects
#'
#' Returns **projects which the current user has explicit permission to access, with search options.** Note that, for performance reasons, in returned ProjectModels, field 'highest_rank' is NOT valued (unlike in simple query). The same information can be found in 'managers', 'annotators' and 'viewers' lists.
#'
#' @param also_others boolean; NULL
#' @param not_granted boolean; Return projects on which the current user has _no permission_, but visible to him/her.
#' @param for_managing boolean; Return projects that can be written to (including erased) by the current user.
#' @param title_filter string; Use this pattern for matching returned projects names.
#' @param instrument_filter string; Only return projects where this instrument was used.
#' @param filter_subset boolean; Only return projects having 'subset' in their names.
#' @param order_field string; One of ['instrument', 'instrument_url', 'highest_right', 'projid', 'title', 'visible', 'status', 'objcount', 'pctvalidated', 'pctclassified', 'classifsettings', 'classiffieldlist', 'popoverfieldlist', 'comments', 'description', 'rf_models_used', 'cnn_network_id']
#' @param summary boolean; Return projects except somme fields like bodc_variables if set to True. For projects list display purpose.
#' @param window_start integer; Skip `window_start` before returning data.
#' @param window_size integer; Return only `window_size` lines.
#'
#' @export
search_projects <- function(also_others = NULL, not_granted = NULL, for_managing = NULL, title_filter = NULL, instrument_filter = NULL, filter_subset = NULL, order_field = NULL, summary = NULL, window_start = NULL, window_size = NULL) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/search", query_string(also_others = also_others, not_granted = not_granted, for_managing = for_managing, title_filter = title_filter, instrument_filter = instrument_filter, filter_subset = filter_subset, order_field = order_field, summary = summary, window_start = window_start, window_size = window_size))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
