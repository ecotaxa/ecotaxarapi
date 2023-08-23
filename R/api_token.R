#' Get the path to your cached EcoTaxa token
#'
#' This path can be changed with option "ecotaxar.token_path"; by default, it is
#' "~/.R/ecotaxar/token".
#'
#' @return The path to the token file.
#' @export
#' @examples
#' # get current token path
#' api_token_path()
#' # set the option to change the path
#' options(ecotaxa.token_path="~/.my_ecotaxa_token")
#' api_token_path()
#' # NB: write this option in .Rprofile to make it permanent.
api_token_path <- function() {
  token_path <- getOption("ecotaxa.token_path")
  if (is.null(token_path)) {
    token_path <- "~/.R/ecotaxa/token"
  }
  token_path <- path.expand(token_path)
  return(token_path)
}

#' Save your EcoTaxa token
#'
#' The token is saved to a file, its path can be changed with option "ecotaxar.token_path"; by default, it is "~/.R/ecotaxar/token".
#'
#' @param token the token string, returned by `[login()]`.
#' @param path path to the file where the token will be stored; defaults to `[api_token_path()]`.
#'
#' @return The path to the token file.
#' @export
#' @examples
#' token <- login(username="ecotaxa.api.user@gmail.com", password="test!")
#' # save to the default path
#' save_api_token(token)
#' api_token_path()
#'
#' # save to another path
#' save_api_token(token, path=)
#' options(ecotaxa.token_path="~/.my_ecotaxa_token")
#' api_token_path()
#' # set the option to change the path
#' api_token_path()
#' # NB: write this option in .Rprofile to make it permanent.
save_api_token <- function(token, path=api_token_path()) {
  if (path != api_token_path()) {
    options("ecotaxa.token_path"=path)
  }
  writeLines(token, con=path)
  return(invisible(token))
}


#' Read your EcoTaxa token
#'
#' @param path path to the file where the token is be stored; defaults to `[api_token_path()]`.
#'
#' @return The token string.
#' @export
#' @examples
#' # get a token
#' token <- login(username="ecotaxa.api.user@gmail.com", password="test!")
#'
#'
api_token <- function(path=api_token_path()) {
  if (!file.exists(path)) {
    stop("Cannot find API token at ", path)
  }
  token <- readLines(path)
  return(token)
}
