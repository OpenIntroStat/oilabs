# take a 10% random sample from complete.cases of flights dataset
# from nycflights13 package

# complete.cases since intro_to_data lab has enough going on w/o
# worrying about NAs

# smaller sample than in nycflights13 so ggplots aren't too slow

library(nycflights13)
library(dplyr)

set.seed(2852017)

nycflights <- flights %>%
  filter(complete.cases(.)) %>%
  sample_frac(size = 0.1)

save(nycflights, file = "../data/nycflights.rda")

save(nycflights, file = "../data/nycflights.RData")