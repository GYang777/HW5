#' A Age Function
#'
#' This function allows you to check one of the oldest players in one specific year
#' @param Year Who is one of the oldest players in selected year? Defaults to Null
#' @keywards age
#' @export
#' @example
#' oldest_player()


oldest_player <- function(year){
  function_dataset_2 <- dplyr::filter(Seasons_Stats_NBA, Year==year)
  utils::head(
    dplyr::filter(function_dataset_2, Age==max(function_dataset_2[["Age"]], na.rm=TRUE)),
    1)
}

