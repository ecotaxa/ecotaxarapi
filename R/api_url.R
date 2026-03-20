#' Get the base URL of EcoTaxa's API
#'
#' @details The url is "https://ecotaxa.obs-vlfr.fr/api/" by default but can be changed with the option `ecotaxa.url`
#' @export
#' @examples
#' api_url()
#' # set a new default
#' options(ecotaxa.url="https://ecotaxa.somewhere.edu/api/")
#' api_url()
#' # remove the option
#' options(ecotaxa.url=NULL)
#' api_url()
api_url <- function() {
  url <- getOption("ecotaxa.url")
  # TODO look at ways to save this
  if (is.null(url)) {
    url <- "https://ecotaxa.obs-vlfr.fr/api"
  }
  return(url)
}

