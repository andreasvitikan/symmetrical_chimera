shuffle <- function(cards) {
  random <- sample(1:52, 52)
  cards[random, ]
}

# just call shuffle(deck)