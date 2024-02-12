####################
# This files loads monthly sales of vehicles
# Data forecast for the next 3 years will be prepared.
# Created by Taiwo Amao
#
####################
# Clear all variables in workspace
rm(list=ls())
# Load the forecasting package 
library(fpp2)
# Load the data 
data <- read.csv("/Users/taiwo/OneDrive/Documents/TOTALSA.csv")
# Declare this as time series data 
Y <- ts(data[,2],start=c(1976,1),frequency = 12)
############################
# Preliminary Analysis
############################
#Time plot
autoplot(Y) + 
  ggtitle("Time Plot: TOTALSA.csv") +
  ylab("Millions of 2027 Dollars")
# Data has a strong trend. I would investigate the transformations.
# Take the difference of the data to remove the trend.
DY <- diff(Y)
# Time Plot of difference in the date
autoplot(DY) + 
  ggtitle("Time Plot: Change in TOTALSA.csv") +
  ylab("Millions of 2027 Dollars")

# Series appears trend-stationary, use to investigate seasonality.
ggseasonplot(DY) +
  ggtitle("Seasonal Plot: Change in Daily Sales") +
  ylab("Millions of 2027 Dollars")

# Another method to get seasonal plot, the subseries plot
ggsubseriesplot(DY)

#####################################################
# Our series , Y has trend and seasonality.
# To remove the trend, take the first difference.
# The first difference series still has seasonality.
#
# Forecast with different methods
###################################################

######
# The benchmark method is used for forecasting.
# Seasonal naive method is used as our benchmark method- which  takes  the mean of the data every month.
# y-t = y_{t-s} + e-t
############
fit <- snaive(DY) # Residual SD = 1.374
print(summary(fit))
checkresiduals(fit)

################
# Fit ETS method
################
fit_ets <- ets(Y) # Residual SD = 0.9472
print(summary(fit_ets))
checkresiduals(fit_ets)

##############
# Fit on ARIMA model
##############
fit_arima <- auto.arima(Y,d=1,D=1,stepwise = FALSE, approximation=FALSE, trace=TRUE) # Residual SD = 1.099091
print(summary(fit_arima))
checkresiduals(fit_arima)

#############################
# Forecast with ARIMA model
#############################
fcst <- forecast(fit_arima,h=36)
autoplot(fcst,include=60)
print(summary(fcst))

