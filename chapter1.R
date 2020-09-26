# This is a comment in R.

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

roll2 <- function(die = 1:6) {
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}
