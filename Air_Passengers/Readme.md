# Load the AirPassengers dataset, which is included in R
data("AirPassengers")

# Display the class of the AirPassengers object
class(AirPassengers)

# Display the start date of the time series
start(AirPassengers)

# Display the end date of the time series
end(AirPassengers)

# Display the frequency of the time series
frequency(AirPassengers)

# Display a summary of the time series, including mean, median, min, max, etc.
summary(AirPassengers)

# Plot the time series data
plot(AirPassengers)

# Add a regression line to the plot using linear regression
abline(reg=lm(AirPassengers ~ time(AirPassengers)))

# Display the cycle of the time series
cycle(AirPassengers)

# Plot the mean values for each cycle of the time series
plot(aggregate(AirPassengers, FUN = mean))

# Create a boxplot of the time series grouped by cycles
boxplot(AirPassengers ~ cycle(AirPassengers))

# Plot the autocorrelation function (ACF) of the logarithm of the time series
acf(log(AirPassengers))

# Plot the ACF of the first difference of the logarithm of the time series
acf(diff(log(AirPassengers)))

# Fit an ARIMA (AutoRegressive Integrated Moving Average) model to the time series
# The model has a non-seasonal difference order of 1, a moving average order of 1,
# and a seasonal difference order of 1 with a seasonal moving average order of 1.
fit <- arima(log(AirPassengers), c(0, 1, 1), seasonal = list(order = c(0, 1, 1), period = 12))
