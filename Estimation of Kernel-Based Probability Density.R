# Load the faithful dataset
data(faithful)

data <- faithful
head(data)

# Extract the eruptions column
eruptions <- faithful$eruptions

# Perform kernel density estimation
kde <- density(eruptions)

# Plot the kernel density estimate
plot(kde, main="Kernel Density Estimation of Eruption Times", xlab="Eruption Time (minutes)", ylab="Density")

# Add a rug plot to show the data points
rug(eruptions)
