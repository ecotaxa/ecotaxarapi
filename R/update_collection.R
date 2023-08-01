# Generated automatically. See README before editing.

#' Update Collection
#'
#' **Update the collection**. Note that some updates are silently failing when not compatible with the composing projects. **Returns NULL upon success.** Note: The collection is updated only if manageable.
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#' @param project_ids array; The list of composing project IDs.
#' @param provider_user NULL; Is the person who is responsible for the content of this metadata record. Writer of the title and abstract.
#' @param contact_user NULL; Is the person who should be contacted in cases of questions regarding the content of the dataset or any data restrictions. This is also the person who is most likely to stay involved in the dataset the longest.
#' @param creator_users array; All people who are responsible for the creation of the collection. Data creators should receive credit for their work and should therefore be included in the citation.
#' @param creator_organisations array; All organisations who are responsible for the creation of the collection. Data creators should receive credit for their work and should therefore be included in the citation.
#' @param associate_users array; Other person(s) associated with the collection.
#' @param associate_organisations array; Other organisation(s) associated with the collection.
#' @param id integer; The collection Id.
#' @param external_id string; The external Id.
#' @param external_id_system string; The external Id system.
#' @param title string; The collection title.
#' @param short_title string; The collection short title.
#' @param citation string; The collection citation.
#' @param license string; The collection license.
#' @param abstract string; The collection abstract.
#' @param description string; The collection description.
#'
#' @export
update_collection <- function(collection_id, project_ids = NULL, provider_user = NULL, contact_user = NULL, creator_users = NULL, creator_organisations = NULL, associate_users = NULL, associate_organisations = NULL, id = NULL, external_id = NULL, external_id_system = NULL, title = NULL, short_title = NULL, citation = NULL, license = NULL, abstract = NULL, description = NULL) {
  request_body <- list(project_ids = project_ids, provider_user = provider_user, contact_user = contact_user, creator_users = creator_users, creator_organisations = creator_organisations, associate_users = associate_users, associate_organisations = associate_organisations, id = id, external_id = external_id, external_id_system = external_id_system, title = title, short_title = short_title, citation = citation, license = license, abstract = abstract, description = description)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/", collection_id, "")) %>%
      httr2::req_method("PUT") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
