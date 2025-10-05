setwd("C:\\Users\\USER\\Desktop\\ps\\IT24102835\\IT24102835 Lab 09")
getwd()

# Exercise 1
# Part 1
baking_time <- rnorm(25, mean = 45, sd = 2)

# Part 2
t.test(baking_time, mu = 46, alternative = "less")
