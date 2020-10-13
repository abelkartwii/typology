install.packages(c("dplyr","ggplot2","janitor"))
library(c("dplyr","ggplot2","janitor", "stats"))

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

#extract MBTI function pairs + extraversion + p/j
mbti.pairs <- substr(mbti, 2, 3)
personality$mbti.pairs <- as.factor(mbti.pairs)

mbti.ei <- substr(mbti, 1, 1)
personality$mbti.ei <- as.factor(mbti.ei)

mbti.pj <- substr(mbti, 4, 4)
personality$mbti.pj <- as.factor(mbti.pj)

#apply mask + mutate
attach(personality)
personality <- mutate(
  mbti.pj = substr(mbti, 4, 4)
)
