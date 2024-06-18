# Define the matrix A and vector b
A <- matrix(c(4, 1, 1, 
              1, 5, 1, 
              1, 1, 3), nrow = 3, byrow = TRUE)
b <- c(4, 7, 3)

# Jacobi's method implementation
jacobi <- function(A, b, tol = 1e-6, max_iter = 100) {
  n <- length(b)
  x <- rep(0, n)
  
  for (iter in 1:max_iter) {
    x_new <- sapply(1:n, function(i) (b[i] - sum(A[i, -i] * x[-i])) / A[i, i])
    if (sqrt(sum((x_new - x)^2)) < tol) return(x_new)
    x <- x_new
  }
  
  warning("Maximum number of iterations reached without convergence")
  return(x)
}

# Solve the system using Jacobi's method
solution <- jacobi(A, b)

# Print the solution and verify
cat("Solution found by Jacobi's method:\n", solution, "\n")
cat("Verification (A * solution):\n", A %*% solution, "\n")
cat("b vector:\n", b, "\n")
