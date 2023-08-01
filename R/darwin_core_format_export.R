# Generated automatically. See README before editing.

#' Emodnet Format Export
#'
#' **Export the collection in Darwin Core format, e.g. for EMODnet portal**, @see https://www.emodnet-ingestion.eu Produces a DwC-A (https://dwc.tdwg.org/) archive into a temporary directory, ready for download. Maybe useful, a reader in Python: https://python-dwca-reader.readthedocs.io/en/latest/index.html Note: Only manageable collections can be exported.
#'
#' @param collection_id integer; The collection to export, by its internal Id.
#' @param dry_run boolean; If set, then only a diagnostic of doability will be done.
#' @param pre_mapping object; Mapping from present taxon (key) to output replacement one (value). Use a null replacement to _discard_ the present taxon. Note: These are EcoTaxa categories, WoRMS mapping happens after, whatever.
#' @param include_predicted boolean; If set, then predicted objects, as well as validated ones, will be exported. A validation status will allow to distinguish between the two possible statuses.
#' @param with_absent boolean; If set, then *absent* records will be generated, in the relevant samples, for categories present in other samples.
#' @param with_computations array; Compute organisms abundances (ABO), concentrations (CNC) or biovolumes (BIV). Several possible.
#' @param formulae object; Transitory: How to get values from DB free columns. Python syntax, prefixes are 'sam', 'ssm' and 'obj'. Variables used in computations are 'total_water_volume', 'subsample_coef' and 'individual_volume'
#'
#' @export
darwin_core_format_export <- function(collection_id = NULL, dry_run = NULL, pre_mapping = NULL, include_predicted = NULL, with_absent = NULL, with_computations = NULL, formulae = NULL) {
  request_body <- list(collection_id = collection_id, dry_run = dry_run, pre_mapping = pre_mapping, include_predicted = include_predicted, with_absent = with_absent, with_computations = with_computations, formulae = formulae)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/export/darwin_core")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
