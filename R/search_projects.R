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
#' @param order_field string; One of ['instrument', 'highest_right', 'license', 'projid', 'title', 'visible', 'status', 'objcount', 'pctvalidated', 'pctclassified', 'classifsettings', 'classiffieldlist', 'popoverfieldlist', 'comments', 'description', 'rf_models_used', 'cnn_network_id']
#' @param window_start integer; Skip `window_start` before returning data.
#' @param window_size integer; Return only `window_size` lines.
#'
#' @export
search_projects <- function(also_others = NULL, not_granted = NULL, for_managing = NULL, title_filter = NULL, instrument_filter = NULL, filter_subset = NULL, order_field = NULL, window_start = NULL, window_size = NULL) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/projects/search"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
