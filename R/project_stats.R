# Generated automatically. See README before editing.

#' Project Stats
#'
#' **Returns stats** for a project. These stats will be returned as a list containing at index : - 0 : The **title** of the project, - 1 : A string containing all **freecols name and related column number**, - 2 : **"(0):"** - 3 : **"Total: 0 values, dup 0 values"** Then for each acquisition a pair of strings will be added to the list : - A string containing the **acquisition origin id** (the **number of objects for this acquisition**) : and then **small stats for an acquisition of a free column values inside** : [ min of values ; max of values ; distribution of the different values ; mode, i.e. freq of most frequent value] - A string containing the **number of total values** and the **number of duplicates values** "Total: ... values, dup ... values"
#'
#' @param project_id integer; Internal, numeric id of the project.
#'
#' @export
project_stats <- function(project_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "/stats")) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
