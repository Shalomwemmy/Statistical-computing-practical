# Define the matrix of vectors
A <- matrix(c(1, 1, 1, 
              1, 2, 3, 
              1, 3, 4), nrow = 3, byrow = TRUE)

# Perform QR decomposition
qr_decomp <- qr(A)

# Extract the orthogonal matrix Q and upper triangular matrix R
Q <- qr.Q(qr_decomp)
R <- qr.R(qr_decomp)

# Print the orthogonal matrix Q
cat("Orthogonal matrix Q:\n")
print(Q)

# Print the upper triangular matrix R
cat("Upper triangular matrix R:\n")
print(R)

# Verify that Q is orthogonal
cat("Q^T * Q:\n")
print(t(Q) %*% Q)
