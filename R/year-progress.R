#' Give the progress of the year for a given date
#'
#' Rajouter une petite description
#'
#' @param date A date
#' @param is_leap_year Is that year a leap year?
#'
#' @export
#'
#' @examples
#' year_progress(Sys.Date())
year_progress <- function(date, is_leap_year = FALSE) {
  nominator   <- as.numeric(format(date, "%j"))
  denominator <- if (is_leap_year) 366 else 365
  share <- round(nominator * 100 / denominator)
  message(share, "% of the year is done!")
}
