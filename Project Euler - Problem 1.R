
# Project Euler - Problem 1 -----------

#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

library(dplyr)

# Multiples of 3
max_multiple_3 <- c(1:333)
df_max_multiple_3 <- data.frame(max_multiple_3)

multiple_of_3 <- df_max_multiple_3  %>% 
  mutate(vector3 = 3) %>% 
  mutate(multiples_3 = max_multiple_3*vector3)

# Multiples of 5
max_multiple_5 <- c(1:199)
df_max_multiple_5 <- data.frame(max_multiple_5)

multiple_of_5 <- df_max_multiple_5 %>% 
  mutate(vector5 = 5) %>% 
  mutate(multiples_5 = max_multiple_5*vector5)

# Removing duplicates

multiples <- as.data.frame(c(multiple_of_5$multiples_5,multiple_of_3$multiples_3)) %>% 
  distinct

# Final Summation 

sum(multiples)

    