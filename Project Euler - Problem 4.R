
# Project Euler - Problem 4 -----------


# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


library(tidyverse)

vector_one <- c(100:999)
vector_two <- c(100:999)

# Function which returns a TRUE or FLASE if palindrome
is_palindrome <- function(number) {
  rawnumber <- charToRaw(number) 
  identical(rawnumber, rev(rawnumber))
}

# Products of all 3 digit number combinations
df <- data.frame(vector_one,vector_two) %>% 
      expand(vector_one,vector_two) %>% 
      mutate(product = vector_one*vector_two)

products <- as.vector(df$product)

# Apply function of all products to check if palindromes
palindrome <- data.frame(sapply(products, is_palindrome),products)

# Check the largest
largest_palindrome <- palindrome %>% filter(sapply.products..is_palindrome. == TRUE) %>%  arrange(desc(products))
