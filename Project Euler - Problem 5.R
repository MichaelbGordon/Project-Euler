
# Project Euler - Problem 5 -----------

#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


gcd <- function(a, b) {
    stopifnot(!(a==0 && b==0))
  if ( a == 0 )
    return(b)
  
  if ( b == 0 )
    return(a)
  
  return(abs(gcd(b, a-b*floor(a/b))))
}


lcm <- function(a, b) {
   return(abs(a*b)/gcd(a,b))
}


Lowest_common <- lcm(20,lcm(19,lcm(18,lcm(17,lcm(16,lcm(15,lcm(14,lcm(13,11))))))))



