#' calc_streak
#' 
#' @param x A sequence of \code{"H"} and \code{"M"} values indicating a sequence
#'   of hit or missed shots.
#'   
#' @return A vector of the streak lengths. A streak is defined as a series of
#'   hits \code{"H"} followed by a miss \code{"M"}.
#' @export
#' 
#' @examples
#' sequence <- c("H", "H", "M", "H", "M", "M", "H", "H", "H")
#' calc_streak(sequence)
calc_streak <- function(x){
  y <- rep(0,length(x))
  y[x == "H"] <- 1
  y <- c(0, y, 0)
  wz <- which(y == 0)
  streak <- diff(wz) - 1
  return(streak)
}
