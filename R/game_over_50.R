#' A Games Function
#'
#' This function allows you to check the data of players having attended over 50 games in one specific year
#' @param Year Which year data do you want to check? Defaults to Null
#' @keywards games
#' @export
#' @example
#' games_over_50()


games_over_50 <- function(year) {
  function_dataset_1 <- dplyr::filter(Seasons_Stats_NBA, Year==year)
  dplyr::filter(function_dataset_1, G>50)
}

