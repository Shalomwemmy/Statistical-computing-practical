# Number of pseudo-random numbers to generate
n <- 1000

# Generate pseudo-random numbers uniformly distributed between 0 and 1
set.seed(123)  # set seed for reproducibility
pseudo_numbers <- runif(n)

# Plot the histogram of generated pseudo-random numbers
hist(pseudo_numbers, breaks = 20, col = "lightblue", main = "Histogram of Pseudo-random Numbers",
     xlab = "Value", ylab = "Frequency")

# Perform goodness of fit test (Chi-square test)
expected <- rep(1/20, 20)  # expected frequencies assuming uniform distribution
observed <- table(cut(pseudo_numbers, breaks = 20))
chi_square <- chisq.test(observed, p = expected)

# Display results of the goodness of fit test
cat("Chi-square test for goodness of fit:\n")
print(chi_square)
