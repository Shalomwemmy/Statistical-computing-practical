# Function definition
f <- function(x) {
  return(x^3 - 2*x - 5)
}

# Bisection method implementation
bisection <- function(f, a, b, tol = 1e-6, max_iter = 100) {
  if (f(a) * f(b) >= 0) {
    stop("Bisection method fails: f(a) and f(b) must have opposite signs.")
  }
  
  iter <- 0
  while ((b - a) / 2 > tol && iter < max_iter) {
    midpoint <- (a + b) / 2
    if (f(midpoint) == 0) {
      return(midpoint)  # Found exact root
    } else if (f(a) * f(midpoint) < 0) {
      b <- midpoint
    } else {
      a <- midpoint
    }
    iter <- iter + 1
  }
  
  # Return midpoint of final interval as approximate root
  return((a + b) / 2)
}

# Apply bisection method to find root of f(x) = x^3 - 2x - 5 in [1, 3]
a <- 1
b <- 3
root <- bisection(f, a, b)

# Print the root found
cat("Approximate root found by bisection method:", root, "\n")

# Check the value of f at the root
cat("Value of f at the root:", f(root), "\n")
