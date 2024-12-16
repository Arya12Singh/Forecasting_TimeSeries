#AryaSingh
#Module3
#Project: Forecasting Financial Time Series

install.packages("quantmod")
library(quantmod)

#1. Download 5-Year Worth of Data for HON and AAPL
library(lubridate)


# Specify the start and end dates for the data retrieval
start_date <- Sys.Date() - years(5)
end_date <- Sys.Date()

# Download data for HON and AAPL
getSymbols("AAPL", src = "yahoo", from = start_date, to = end_date)
getSymbols("HON", src = "yahoo", from = start_date, to = end_date)

#2. Fit an AR(1) Time-Series Model and Plot Forecasts
library(forecast)

# For HON
hon_close <- Cl(HON)
hon_fit <- Arima(hon_close, order = c(1, 0, 0))
plot(forecast(hon_fit, h = 6), main = "Forecast for HON with AR(1)")

# For AAPL
aapl_close <- Cl(AAPL)
aapl_fit <- Arima(aapl_close, order = c(1, 0, 0))
plot(forecast(aapl_fit, h = 6), main = "Forecast for AAPL with AR(1)")



#3.Test for Stationarity
library(tseries)

# For HON
adf.test(hon_close, alternative = "stationary")

# For AAPL
adf.test(aapl_close, alternative = "stationary")

#4.Use auto.arima() or Holt-Winters
# For HON
hon_auto <- auto.arima(hon_close)
plot(forecast(hon_auto, h = 6), main = "Auto-ARIMA Forecast for HON")

# For AAPL
aapl_auto <- auto.arima(aapl_close)
plot(forecast(aapl_auto, h = 6), main = "Auto-ARIMA Forecast for AAPL")

#5. Forecasting Dry Wine Prices
dry_wine <- read.csv("dry_wine.csv")
dry_wine_ts <- ts(dry_wine[,2], frequency = 12) # Assuming monthly data; adjust frequency as needed

# Auto-ARIMA
wine_auto <- auto.arima(dry_wine_ts)
plot(forecast(wine_auto, h = 12), main = "Auto-ARIMA Forecast for Dry Wine Prices")



