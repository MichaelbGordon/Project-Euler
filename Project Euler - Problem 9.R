
# Project Euler - Problem 9 -----------


#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

#a2 + b2 = c2

#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

library(tidyverse)
library(numbers)
x <- as.data.frame(pythagorean_triples(1,998))

df <- x %>% 
  select(-1,-2) %>% 
  mutate(sum_of_sides = V3 + V4 +V5,
         divisible = 1000/sum_of_sides)

# Inspecting DF

a <- 15*25
b <- 8*25
c <- 17*25

a^2+b^2 == c^2

prod(a,b,c)

