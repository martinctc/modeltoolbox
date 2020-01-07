#' Calculate the nth root of a numeric value
#' 
#' @param x Numeric value
#' @param power The n value, e.g. 2 for square root
#' @param replace_NA A character vector specifying what to replace NA values with. Defaults to 0.
#' 
#' @examples 
#' root_it(100, 2)
#' root_it(1024, 10)
#' root_it(81, 4)
#' @export
root_it <- function(x, power, replace_NA = 0){
  result <- exp(log(x) / power)
  ifelse(is.na(result), replace_NA, result)
}


