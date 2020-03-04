#' A Correlation Function
#'
#' This function allows you to check the correlation of all numeric continuous variables in one specific year
#' @param Year Which year data do you want to check? Defaults to Null
#' @keywards numeric correlation
#' @export
#' @example
#' correlation_numeric_var()



correlation_numeric_var <- function(year){
  function_dataset_3 <- purrr::keep(filter(Seasons_Stats_NBA, Year==year), is.numeric)
  utils::cor(function_dataset_3)
}


