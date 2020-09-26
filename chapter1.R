# This is a comment in R.

default_weights <- c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6)

roll <- function(prob = default_weights) {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE, prob = prob)
  sum(dice)
}

roll2 <- function(die = 1:6) {
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

# How to simulate an unfair dice - all the probabilities are 1/8
# except for number 6 which is going to be 3/8

die <- 1:6
weights <- c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8)

# this is a sanity check - the probabilities should all sum to 1
sum(weights)

rolls <- sample(die, size = 100, replace = TRUE, prob = weights)
qplot(rolls, binwidth = 1)

# Rolling 2 weighted dice and plotting the histogram of the resulting sum

rolls <- replicate(10000, roll(weights))
qplot(rolls, binwidth = 1)
