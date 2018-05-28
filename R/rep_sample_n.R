#' Repeating sampling with a given sample size and number of samples
#' 
#' Take a sample from the given data frame with a given sample size and 
#' a desired number of times. Useful for generating sampling and bootstrap 
#' distributions, and works well in a dplyr pipeline. Built with 
#' `dplyr::sample_n` in mind.
#' 
#' @param tbl tbl of data.
#' @param size The number of rows to select.
#' @param replace Sample with or without replacement?
#' @param reps The number of samples to collect.
#' @return A tbl_df that aggregates all created samples, with the addition of 
#' a `replicate` column that the tbl_df is also grouped by
#' @export

rep_sample_n <- function(tbl, size, replace = FALSE, reps = 1)
{
    n <- nrow(tbl)
    i <- unlist(replicate(reps, sample.int(n, size, replace = replace), 
                          simplify = FALSE))

    rep_tbl <- cbind(replicate = rep(1:reps,rep(size,reps)), tbl[i,])

    dplyr::group_by(rep_tbl, replicate)
}
