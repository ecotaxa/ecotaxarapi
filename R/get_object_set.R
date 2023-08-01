# Generated automatically. See README before editing.

#' Get Object Set
#'
#' Returns **filtered object Ids** for the given project.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param fields string;  Specify the needed object (and ancillary entities) fields. It follows the naming convention 'prefix.field' : Prefix is either 'obj' for main object, 'fre' for free fields, 'img' for the visible image. The column obj.imgcount contains the total count of images for the object. Use a comma to separate fields. 💡 More help : You can get the field labels by parsing the classiffieldlist returned by a call to https://ecotaxa.obs-vlfr.fr/api/docs#/projects/project_query_projects__project_id__get. **Note that the following fields must be prefixed with the header "obj."** (for example → obj.orig_id): acquisid classif_auto_id, classif_auto_score, classif_auto_when, classif_crossvalidation_id, classif_id, classif_qual, classif_who, classif_when, complement_info, depth_max, depth_min, latitude, longitude, objdate, object_link, objid, objtime, orig_id, random_value, similarity, sunpos. **Note that the following fields must be prefixed with the header "img."** (for example → img.file_name): file_name, height, imgid, imgrank, file_name, orig, objid, file_name thumb_file_name, thumb_height, thumb_width, width. **Note that the following fields must be prefixed with the header "txo."** (for example → txo.display_name): creation_datetime, creator_email, display_name, id, id_instance, id_source, lastupdate_datetime, name, nbrobj, nbrobjcum, parent_id, rename_to source_desc, source_url, taxostatus, taxotype. **All other fields must be prefixed by the header "fre."** (for example → fre.circ.).
#' @param order_field string; Order the result using given field. If prefixed with "-" then it will be reversed.
#' @param window_start integer;  Allows to return only a slice of the result, by skipping window_start objects before returning data. If no **unique order** is specified, the result can vary for same call and conditions.
#' @param window_size integer;  Allows to return only a slice of the result, by returning a _maximum_ of window_size lines. If no **unique order** is specified, the result can vary for same call and conditions.
#' @param taxo string; Coma-separated list of numeric taxonomy/category ids. Only include objects classified with one of them.
#' @param taxochild string; If 'Y' and taxo is set, also include children of each member of 'taxo' list in taxonomy tree.
#' @param statusfilter string; Include objects with given status: 'NV': Not validated 'PV': Predicted or Validated 'PVD': Predicted or Validated or Dubious 'NVM': Validated, but not by me 'VM': Validated by me 'U': Not classified other: direct equality comparison with DB value
#' @param MapN string; If all 4 are set (MapN, MapW, MapE, MapS), include objects inside the defined bounding rectangle.
#' @param MapW string; If all 4 are set (MapN, MapW, MapE, MapS), include objects inside the defined bounding rectangle.
#' @param MapE string; If all 4 are set (MapN, MapW, MapE, MapS), include objects inside the defined bounding rectangle.
#' @param MapS string; If all 4 are set (MapN, MapW, MapE, MapS), include objects inside the defined bounding rectangle.
#' @param depthmin string; Positive values. If both are set (depthmin, depthmax), include objects for which both depths (min and max) are inside the range.
#' @param depthmax string; Positive values. If both are set (depthmin, depthmax), include objects for which both depths (min and max) are inside the range.
#' @param samples string; Coma-separated list of sample IDs, include only objects for these samples.
#' @param instrum string; Instrument name, include objects for which sampling was done using this instrument.
#' @param daytime string; Coma-separated list of sun position values: D for Day, U for Dusk, N for Night, A for Dawn (Aube in French).
#' @param month string; Coma-separated list of month numbers, 1=Jan and so on.
#' @param fromdate string; Format is 'YYYY-MM-DD', include objects collected after this date.
#' @param todate string; Format is 'YYYY-MM-DD', include objects collected before this date.
#' @param fromtime string; Format is 'HH24:MM:SS', include objects collected after this time of day.
#' @param totime string; Format is 'HH24:MM:SS', include objects collected before this time of day.
#' @param inverttime string; If '1', include objects outside fromtime and totime range.
#' @param validfromdate string; Format is 'YYYY-MM-DD HH24:MI', include objects validated/set to dubious after this date+time.
#' @param validtodate string; Format is 'YYYY-MM-DD HH24:MI', include objects validated/set to dubious before this date+time.
#' @param freenum string; Numerical DB column number in Object as basis for the 2 following criteria (freenumst, freenumend).
#' @param freenumst string; Start of included range for the column defined by freenum, in which objects are included.
#' @param freenumend string; End of included range for the column defined by freenum, in which objects are included.
#' @param freetxt string;  Textual DB column number as basis for following criteria (freetxtval) If starts with 's' then it's a text column in Sample If starts with 'a' then it's a text column in Acquisition If starts with 'p' then it's a text column in Process If starts with 'o' then it's a text column in Object .
#' @param freetxtval string; Text to match in the column defined by freetxt, for an object to be include.
#' @param filt_annot string; Coma-separated list of annotators, i.e. persons who validated the classification at any point in time.
#' @param filt_last_annot string; Coma-separated list of annotators, i.e. persons who validated the classification in last.
#'
#' @export
get_object_set <- function(project_id, fields = NULL, order_field = NULL, window_start = NULL, window_size = NULL, taxo = NULL, taxochild = NULL, statusfilter = NULL, MapN = NULL, MapW = NULL, MapE = NULL, MapS = NULL, depthmin = NULL, depthmax = NULL, samples = NULL, instrum = NULL, daytime = NULL, month = NULL, fromdate = NULL, todate = NULL, fromtime = NULL, totime = NULL, inverttime = NULL, validfromdate = NULL, validtodate = NULL, freenum = NULL, freenumst = NULL, freenumend = NULL, freetxt = NULL, freetxtval = NULL, filt_annot = NULL, filt_last_annot = NULL) {
  request_body <- list(taxo = taxo, taxochild = taxochild, statusfilter = statusfilter, MapN = MapN, MapW = MapW, MapE = MapE, MapS = MapS, depthmin = depthmin, depthmax = depthmax, samples = samples, instrum = instrum, daytime = daytime, month = month, fromdate = fromdate, todate = todate, fromtime = fromtime, totime = totime, inverttime = inverttime, validfromdate = validfromdate, validtodate = validtodate, freenum = freenum, freenumst = freenumst, freenumend = freenumend, freetxt = freetxt, freetxtval = freetxtval, filt_annot = filt_annot, filt_last_annot = filt_last_annot)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/", project_id, "/query", query_string(fields = fields, order_field = order_field, window_start = window_start, window_size = window_size))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
