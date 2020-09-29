install.packages(c("ggplot2"))
library(c("ggplot2","stats"))

#import data, remove unneeded data, change as factor
personality <- read.csv(file.choose(), header = TRUE, stringsAsFactors = FALSE)
personality$timestamp <- NULL
personality$enneawing <- NULL

attach(personality)

personality$sign <- as.factor(personality$sign)
personality$house <- as.factor(personality$house)

personality$accuracy.astro <- as.factor(personality$accuracy.astro)
personality$accuracy.mbti <- as.factor(personality$accuracy.mbti)
personality$accuracy.house <- as.factor(personality$accuracy.house)
personality$accuracy.enneagram <- as.factor(personality$accuracy.enneagram)

#trim enneagram + enneawing
personality$enneagram <- sapply(
  strsplit(enneagram, split = " "), "[", 2
)
personality$enneagram <- as.factor(personality$enneagram)

personality$wing <- sapply(
  strsplit(wing, split = " "), "[", 1
)
personality$wing <- as.factor(personality$wing)

#transformation done, apply mask :)
attach(personality)

# --- enneagram --- #
# barchart
bar.ennea <- ggplot(personality, aes(enneagram)) +
  geom_bar(mapping = aes(enneagram, fill = mbti),
           stat = "count", position = "stack")
bar.ennea <- ggplot(personality, aes(enneagram)) +
  geom_bar(mapping = aes(enneagram, fill = mbti),
           stat = "count", position = "fill")
bar.ennea
