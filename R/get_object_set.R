# Generated automatically. See README before editing.

#' Get Object Set
#'
#' Returns **filtered object Ids** for the given project.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param fields string;  Specify the needed object (and ancillary entities) fields. It follows the naming convention 'prefix.field' : Prefix is either 'obj' for main object, 'fre' for free fields, 'img' for the visible image. The column obj.imgcount contains the total count of images for the object. Use a comma to separate fields. More help : You can get the field labels by parsing the classiffieldlist returned by a call to https://ecotaxa.obs-vlfr.fr/api/docs#/projects/project_query_projects__project_id__get. **Note that the following fields must be prefixed with the header "obj."** (for example → obj.orig_id): acquisid classif_auto_id, classif_auto_score, classif_auto_when, classif_crossvalidation_id, classif_id, classif_qual, classif_who, classif_when, complement_info, depth_max, depth_min, latitude, longitude, objdate, object_link, objid, objtime, orig_id, random_value, similarity, sunpos. **Note that the following fields must be prefixed with the header "img."** (for example → img.file_name): file_name, height, imgid, imgrank, file_name, objid, orig_file_name, thumb_file_name, thumb_height, thumb_width, width. **Note that the following fields must be prefixed with the header "txo."** (for example → txo.display_name): creation_datetime, creator_email, display_name, id, id_instance, id_source, lastupdate_datetime, name, nbrobj, nbrobjcum, parent_id, rename_to, source_desc, source_url, taxostatus, taxotype. **All other fields must be prefixed by the header "fre."** (for example → fre.circ.).
#' @param order_field string; Order the result using given field. If prefixed with "-" then it will be reversed. When using *special syntax ss-Innnn*, the order is similarity with given (by its ID) object.
#' @param window_start integer;  Allows to return only a slice of the result, by skipping window_start objects before returning data. If no **unique order** is specified, the result can vary for same call and conditions.
#' @param window_size integer;  Allows to return only a slice of the result, by returning a _maximum_ of window_size lines. If no **unique order** is specified, the result can vary for same call and conditions.
#' @param ProjectFilters Output of [ProjectFilters()]; How to reduce project data.
#'
#' @export
get_object_set <- function(project_id, fields = NULL, order_field = NULL, window_start = NULL, window_size = NULL, ProjectFilters) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/", project_id, "/query", query_string(fields = fields, order_field = order_field, window_start = window_start, window_size = window_size))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ProjectFilters) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
