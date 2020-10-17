# typology
Statistical analyses and data visualizations for the four most popular personality classifications: astrology, the Myers-Briggs Test Indicator (MBTI), the Enneagram of Personality, and the four Hogwarts houses from Harry Potter. From these four types, could we find any correlation or patterns between them?

## data
Dataset used is Rev. Emmy Kegler's fantastic [crowd-sourced database](https://docs.google.com/forms/d/e/1FAIpQLScyC83C8slwxbbryc4bGHoM3SVGeDg6-o0Yos3FMF7zN5nquw/viewform) of individuals' personality sets. n = 2800, 26% or 725 of which are INFJs (mistyped children? we'll find out...)

We're trying to find patterns between:

* the 12 sun signs for astrology -- which means the astrology data is purely based on which month you were born in.
* the 16 MBTI types, however, the 16 types will be reduced to their functional pairs (the two middle letters, NF for an INFJ), their extraversion level (E/I), and which function is their dominant function (P/J, or perceiving/judging) to save space.
* the 9 Enneagram types, plus the two wings for each type, making 18 total Enneagram pairings.
* the 4 Hogwarts houses.

A safe guess would be that out of all four types, the strongest correlation will be found between MBTI and Enneagram.

## how to
Two scripts are available: one for ggplot2 to do its business, and one that is purely statistical analyses (still a young WIP). Both scripts contain the data transformation script needed to clean up the dataset a bit. 
