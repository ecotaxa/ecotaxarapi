#' Handle an API response
#'
#' Fail, with information, if the status code is not 200. Return the parsed response content otherwise.
#'
#' @param x an `httr2_response` object similar to what is output by [httr2::response()].
#' @export
handle_api_response <- function(x) {
  content <- httr2::resp_body_json(x, simplifyVector=TRUE)
  if (x$status_code != 200) {
    print(x)
    print(content)
    stop("API answered with status: ", x$status_code, call.=FALSE)
    out <- NULL
  } else {
    out <- content
  }
  return(out)
}
