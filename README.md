# Stock Price and Wine Price Forecasting Project
## Overview
This project uses time series forecasting techniques to predict the future values of stock prices for Apple Inc. (AAPL) and Honeywell International Inc. (HON), and explores wine price trends. The project applies exponential smoothing, ARIMA models, and regression analysis, assessing accuracy using error metrics like MAPE and MAPD.

## Business Questions
Can we accurately predict short-term stock prices for AAPL and HON to support investment decisions?
How volatile are dry wine prices, and can we forecast future trends effectively?
## Methods
Part 1: Stock Price Forecasting
Tools: Excel (Exponential Smoothing) and R (ARIMA).
### Techniques:
Exponential smoothing with different 
𝛼
α (0.15–0.75) and trend smoothing (
𝛽
β).
ARIMA models built using auto.arima() in R.
## Results:
Optimal α=0.75 for both stocks improved accuracy.
ARIMA(0,1,0) captured trends:
AAPL showed an upward drift.
HON displayed stable, predictable behavior.
Part 2: Wine Price Forecasting
Tools: R (ARIMA, quantmod).
Results:
ARIMA models forecasted volatility with widening confidence intervals, reflecting market uncertainty.
## Results Summary
Stock Prices:
AAPL: Upward trend with drift.
HON: Stable trend with minimal fluctuations.
Wine Prices: Greater volatility and uncertainty in forecasts.
## Tools & Skills
Tools: Excel, R (quantmod, forecast).
Skills: Time Series Analysis, Forecasting, Regression, Data Visualization.
## Conclusion
This project demonstrates the use of forecasting methods to analyze trends, enabling better decision-making for stock investments and pricing strategies in volatile markets.
