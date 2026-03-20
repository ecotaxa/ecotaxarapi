# Generated automatically. See README before editing.

#' Add Worms Taxon
#'
#' Add worms taxon by its aphia_id
#'
#' @param AddWormsTaxonModel Output of [AddWormsTaxonModel()];
#'
#' @export
add_worms_taxon <- function(AddWormsTaxonModel) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "addworms", "") %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(AddWormsTaxonModel) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
