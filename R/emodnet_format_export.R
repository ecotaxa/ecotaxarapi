# Generated automatically. See README before editing.

#' Emodnet Format Export
#'
#' **Export the collection in EMODnet format**, @see https://www.emodnet-ingestion.eu Produces a DwC-A archive into a temporary directory, ready for download. Maybe useful, a reader in Python: https://python-dwca-reader.readthedocs.io/en/latest/index.html 🔒 *For admins only.*
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#' @param dry_run boolean; If set, then only a diagnostic of doability will be done.
#' @param with_zeroes boolean; If set, then *absent* records will be generated, in the relevant samples, for categories present in other samples.
#' @param auto_morpho boolean; If set, then any object classified on a Morpho category will be added to the count of the nearest Phylo parent, upward in the tree.
#' @param with_computations boolean; If set, then an attempt will be made to compute organisms concentrations and biovolumes.
#'
#' @export
emodnet_format_export <- function(collection_id, dry_run, with_zeroes, auto_morpho, with_computations) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/collections/{collection_id}/export/emodnet"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
