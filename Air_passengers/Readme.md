### Load the AirPassengers dataset, which is included in R
data("AirPassengers")

### Display the class of the AirPassengers object
class(AirPassengers)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Air_passengers/Markdown/01.png?token=GHSAT0AAAAAACNOJWAW5ZERHE573P2XBA7SZNWCYVQ">

### Display the start date of the time series
start(AirPassengers)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Air_passengers/Markdown/02.png?token=GHSAT0AAAAAACNOJWAW45ATU5G36RM5YLLWZNWCTKA">

### Display the end date of the time series
end(AirPassengers)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Air_passengers/Markdown/03.png?token=GHSAT0AAAAAACNOJWAWP7P7VZGSEL733ZFKZNWCUWQ">

### Display the frequency of the time series
frequency(AirPassengers)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Air_passengers/Markdown/04.png?token=GHSAT0AAAAAACNOJWAW6UFGTBLWC2WXOVXAZNWCVHQ">

### Display a summary of the time series, including mean, median, min, max, etc.
summary(AirPassengers)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Air_passengers/Markdown/05.png?token=GHSAT0AAAAAACNOJWAW6UFGTBLWC2WXOVXAZNWCVHQ">

### Plot the time series data
plot(AirPassengers)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Air_passengers/Markdown/06.png?token=GHSAT0AAAAAACNOJWAWHL5BGZYP6FXH52TGZNWC2MQ">

### Add a regression line to the plot using linear regression
abline(reg=lm(AirPassengers ~ time(AirPassengers)))

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Air_passengers/Markdown/07.png?token=GHSAT0AAAAAACNOJWAW6UFGTBLWC2WXOVXAZNWCVHQ">

### Display the cycle of the time series
cycle(AirPassengers)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Air_passengers/Markdown/08.png">

### Plot the mean values for each cycle of the time series
plot(aggregate(AirPassengers, FUN = mean))

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Air_passengers/Markdown/09.png">

### Create a boxplot of the time series grouped by cycles
boxplot(AirPassengers ~ cycle(AirPassengers))

### Plot the autocorrelation function (ACF) of the logarithm of the time series

acf(log(AirPassengers))

### Plot the ACF of the first difference of the logarithm of the time series
acf(diff(log(AirPassengers)))

### Fit an ARIMA (AutoRegressive Integrated Moving Average) model to the time series
### The model has a non-seasonal difference order of 1, a moving average order of 1,
### and a seasonal difference order of 1 with a seasonal moving average order of 1.
fit <- arima(log(AirPassengers), c(0, 1, 1), seasonal = list(order = c(0, 1, 1), period = 12))
