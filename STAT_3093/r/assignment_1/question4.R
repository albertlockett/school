# STAT 3093 Assignment 1
# Question 4 (Chapter 1 Question 52)
# Albert Lockett (3254354, k44if@unb.ca)

q4_data <- c(
  389, 356, 359, 363, 375, 424, 325, 394, 402,
  373, 373, 370, 364, 366, 364, 325, 339, 393,
  392, 369, 374, 359, 356, 403, 334, 397
)
q4_data <- sort(q4_data)
n <- length(q4_data)

# Part A)
lower_fourth <- median(q4_data[1:(n/2)])
upper_fourth <- median(q4_data[(n/2 + 1):n])
fourth_spread <- upper_fourth - lower_fourth

print('part a)')
print(sprintf('The lower forth is: %.1f', lower_fourth))
print(sprintf('The upper forth is: %.1f', upper_fourth))
print(sprintf('The fourth spread is: %.1f', fourth_spread))
# [1] "part a)"
# [1] "The lower forth is: 359.0"
# [1] "The upper forth is: 392.0"
# [1] "The fourth spread is: 33.0"


# Part B)
upper_outlier_val <- upper_fourth + 1.5 * fourth_spread
lower_outlier_val <- lower_fourth - 1.5 * fourth_spread
upper_outliers <- q4_data[q4_data > upper_outlier_val]
lower_outliers <- q4_data[q4_data < lower_outlier_val]
num_outliers <- length(upper_outliers) + length(lower_outliers)

upper_extreme_outlier_val <- upper_fourth + 3 * fourth_spread
lower_extreme_outlier_val <- lower_fourth - 3 * fourth_spread
upper_extreme_outliers <- q4_data[q4_data > upper_extreme_outlier_val]
lower_extreme_outliers <- q4_data[q4_data < lower_extreme_outlier_val]
num_extreme_outliers <- length(upper_extreme_outliers) + length(lower_extreme_outliers)

print('part b)')
print(
  sprintf(
    'outliers will have value > %.1f or < %.1f', 
    upper_outlier_val, 
    lower_outlier_val
  )
)
print(sprintf('There are %d outliers:', num_outliers))
print(c(upper_outliers, lower_outliers))
print(
  sprintf(
    'extreme outliers will have value > %.1f or < %.1f', 
    upper_extreme_outlier_val, 
    lower_extreme_outlier_val
  )
)
print(sprintf('There are %d extreme outliers:', num_extreme_outliers))
print(c(upper_extreme_outliers, lower_extreme_outliers))

# [1] "part b)"
# [1] "outliers will have value > 441.5 or < 309.5"
# [1] "There are 0 outliers:"
# [1] "extreme outliers will have value > 491.0 or < 260.0"
# [1] "There are 0 extreme outliers:"


# Part C
boxplot(q4_data)
# output / comments on next page

# Part D

# The fourth spread will not be affected by decreasing the largest
# observation until the value has decreased to a value less than the fourth
# spread

# the value will not be affected
q4_data[length(q4_data)] <- upper_fourth # largest value is at end of list
new_upper_fourth <- median(q4_data[(n/2 + 1):n])
print(new_upper_fourth == upper_fourth)
# [1] TRUE

# the value will be affected
q4_data[length(q4_data)] <- upper_fourth -1
new_upper_fourth <- median(q4_data[(n/2 + 1):n])
print(new_upper_fourth == upper_fourth)
# [1] FALSE
