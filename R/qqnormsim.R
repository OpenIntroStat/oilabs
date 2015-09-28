qqnormsim <- function (x, data) {
  y <- eval(substitute(x), data)
  y = bdims$hgt
  simnorm <- rnorm(n = length(y) * 8, mean = mean(y),
                   sd = sd(y))
  df <- data.frame(x       = c(y, simnorm),
                   plotnum = rep(c("data", "sim 1", "sim 2",
                                   "sim 3", "sim 4", "sim 5",
                                   "sim 6", "sim 7", "sim 8"),
                                 each = length(y)))
  qplot(sample = x, data = df, stat = "qq", facets =  ~ plotnum)
}
