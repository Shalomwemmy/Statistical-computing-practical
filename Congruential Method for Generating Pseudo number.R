# Load the mtcars dataset
data(mtcars)
head(mtcars)

# Parameters for the LCG
a <- 1664525
c <- 1013904223
m <- 2^32
n <- nrow(mtcars)  # number of rows in mtcars dataset
seed <- 123  # initial seed

# Initialize the pseudo-random number sequence
set.seed(seed)  # set seed for reproducibility
x <- numeric(n)
x[1] <- seed

# Generate the pseudo-random numbers
for (i in 2:n) {
  x[i] <- (a * x[i - 1] + c) %% m
}

# Normalize the pseudo-random numbers to be between 0 and 1
x <- x / m

# Modify the mpg column in mtcars based on the generated numbers
mtcars$mpg <- mtcars$mpg + x * 5  # add a scaled version of pseudo-random numbers

# View the modified mtcars dataset
head(mtcars)

# Plot the original vs modified mpg
par(mfrow = c(1, 2))
plot(mtcars$mpg, col = "blue", main = "Modified mpg", xlab = "Index", ylab = "mpg")
plot(mtcars$mpg - x * 5, col = "green", main = "Original mpg", xlab = "Index", ylab = "mpg")
legend("topright", legend = c("Modified", "Original"), col = c("blue", "green"), pch = 1)

