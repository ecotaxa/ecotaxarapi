# Generated automatically. See README before editing.

#' Darwin Core Format Export
#'
#' **Export the collection in Darwin Core format, e.g. for EMODnet portal**, @see https://www.emodnet-ingestion.eu Produces a DwC-A (https://dwc.tdwg.org/) archive into a temporary directory, ready for download. Maybe useful, a reader in Python: https://python-dwca-reader.readthedocs.io/en/latest/index.html Note: Only manageable collections can be exported.
#'
#' @param DarwinCoreExportReq Output of [DarwinCoreExportReq()]; Darwin Core format export request, only allowed format for a Collection. @see https://dwc.tdwg.org/
#'
#' @export
darwin_core_format_export <- function(DarwinCoreExportReq) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "collections", "export", "darwin_core") %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(DarwinCoreExportReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
