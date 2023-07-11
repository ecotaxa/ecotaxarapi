# Generated automatically. See README before editing.

#' Update Project
#'
#' **Update the project**, return **NULL upon success.** Note that some fields will **NOT** be updated and simply ignored, e.g. *free_cols*.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param obj_free_cols object; Object free columns.
#' @param sample_free_cols object; Sample free columns.
#' @param acquisition_free_cols object; Acquisition free columns.
#' @param process_free_cols object; Process free columns.
#' @param init_classif_list array; Favorite taxa used in classification.
#' @param managers array; Managers of this project.
#' @param annotators array; Annotators of this project, if not manager.
#' @param viewers array; Viewers of this project, if not manager nor annotator.
#' @param instrument string; This project's instrument. Transitory: if several of them, then coma-separated.
#' @param contact NULL; The contact person is a manager who serves as the contact person for other users and EcoTaxa's managers.
#' @param highest_right string; The highest right for requester on this project. One of 'Manage', 'Annotate', 'View'.
#' @param license string; NULL
#' @param projid integer; The project Id.
#' @param title string; The project title.
#' @param visible boolean; The project visibility.
#' @param status string; The project status.
#' @param objcount number; The number of objects.
#' @param pctvalidated number; Percentage of validated images.
#' @param pctclassified number; Percentage of classified images.
#' @param classifsettings string; NULL
#' @param classiffieldlist string; NULL
#' @param popoverfieldlist string; NULL
#' @param comments string; The project comments.
#' @param description string; The project description, i.e. main traits.
#' @param rf_models_used string; NULL
#' @param cnn_network_id string; NULL
#'
#' @export
update_project <- function(project_id, obj_free_cols = NULL, sample_free_cols = NULL, acquisition_free_cols = NULL, process_free_cols = NULL, init_classif_list = NULL, managers = NULL, annotators = NULL, viewers = NULL, instrument = NULL, contact = NULL, highest_right = NULL, license = NULL, projid = NULL, title = NULL, visible = NULL, status = NULL, objcount = NULL, pctvalidated = NULL, pctclassified = NULL, classifsettings = NULL, classiffieldlist = NULL, popoverfieldlist = NULL, comments = NULL, description = NULL, rf_models_used = NULL, cnn_network_id = NULL) {
  # convert body to json ourselves, to control the settings
  # this is based on the httr defaults with some additions
  request_body <- list(obj_free_cols = obj_free_cols, sample_free_cols = sample_free_cols, acquisition_free_cols = acquisition_free_cols, process_free_cols = process_free_cols, init_classif_list = init_classif_list, managers = managers, annotators = annotators, viewers = viewers, instrument = instrument, contact = contact, highest_right = highest_right, license = license, projid = projid, title = title, visible = visible, status = status, objcount = objcount, pctvalidated = pctvalidated, pctclassified = pctclassified, classifsettings = classifsettings, classiffieldlist = classiffieldlist, popoverfieldlist = popoverfieldlist, comments = comments, description = description, rf_models_used = rf_models_used, cnn_network_id = cnn_network_id)
  request_body_json <- jsonlite::toJSON(request_body, auto_unbox = TRUE, digits = 22, null = "null")
  handle_api_response(
    httr::PUT(
      url = paste0(api_url(), "/projects/{project_id}"),
      body = request_body_json, encode = "raw",
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
