# Generated automatically. See README before editing.

#' Revert Object Set To History
#'
#' **Revert all objects for the given project**, with the filters, to the target.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param dry_run boolean; If set, then no real write but consequences of the revert will be replied.
#' @param target integer; Use null/None for reverting using the last annotation from anyone, or a user id for the last annotation from this user.
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
revert_object_set_to_history <- function(project_id, dry_run, target = NULL, taxo = NULL, taxochild = NULL, statusfilter = NULL, MapN = NULL, MapW = NULL, MapE = NULL, MapS = NULL, depthmin = NULL, depthmax = NULL, samples = NULL, instrum = NULL, daytime = NULL, month = NULL, fromdate = NULL, todate = NULL, fromtime = NULL, totime = NULL, inverttime = NULL, validfromdate = NULL, validtodate = NULL, freenum = NULL, freenumst = NULL, freenumend = NULL, freetxt = NULL, freetxtval = NULL, filt_annot = NULL, filt_last_annot = NULL) {
  request_body <- list(taxo = taxo, taxochild = taxochild, statusfilter = statusfilter, MapN = MapN, MapW = MapW, MapE = MapE, MapS = MapS, depthmin = depthmin, depthmax = depthmax, samples = samples, instrum = instrum, daytime = daytime, month = month, fromdate = fromdate, todate = todate, fromtime = fromtime, totime = totime, inverttime = inverttime, validfromdate = validfromdate, validtodate = validtodate, freenum = freenum, freenumst = freenumst, freenumend = freenumend, freetxt = freetxt, freetxtval = freetxtval, filt_annot = filt_annot, filt_last_annot = filt_last_annot)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/", project_id, "/revert_to_history", query_string(dry_run = dry_run, target = target))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
