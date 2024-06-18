
# Load rootSolve package
library(rootSolve)

# Define the function
f <- function(x) {
  return(x^3 - 2*x - 5)
}

# Initial guess
x0 <- 2

# Apply Newton-Raphson method using rootSolve package
root <- uniroot.all(f, c(1, 3))  # Finds all roots in the interval [1, 3]

# Print the root found
cat("Root(s) found by Newton-Raphson method:", root, "\n")

# Check the value of f at the root
cat("Value of f at the root(s):", sapply(root, f), "\n")
