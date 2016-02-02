#' calc_streak
#' 
#' @param x A sequence of two values (default is  \code{"H"} and \code{"M"}) indicating a sequence
#'   of possible outcomes for a binary variable. For example,  \code{"H"} and \code{"M"} could indicate 
#'   hits and misses in basketball shots, or \code{"heads"} and \code{"tails"} could indicate coin flips.
#'
#' @param streakvar The value that you are interested in studying. Defaults to \code{"H"} but could be
#'  changed to \code{"heads"} or whatever other response you were interested in studying.
#'   
#' @return A vector of the streak lengths. A streak is defined as a series of
#'   of repeated instances of the \code{streakvar}, followed by the other binary outcome.
#'   For example, a series of hits (\code{"H"}) followed by a miss (\code{"M"}).
#' @export
#' 
#' @examples
#' sequence <- c("H", "H", "M", "H", "M", "M", "H", "H", "H")
#' calc_streak(sequence)
calc_streak <- function(x, streakvar = "H"){
  if (nchar(as.character(x[1]))>1 & streakvar == "H"){
    warning("Expecting a sequence of 'H' and 'M's. Please try again with the appropriate type of sequence, or specify the streakvar parameter.")
  }
  y <- rep(0,length(x))
  y[x == streakvar] <- 1
  y <- c(0, y, 0)
  wz <- which(y == 0)
  streak <- diff(wz) - 1
  return(streak)
}
