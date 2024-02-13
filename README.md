# Vehicle-sales-
Forecast for vehicle sales 


## Table of contents
---
- [Project overview](#project-overview)
- [Data sources](#data-sources)
- [Tools](#tools)
- [Data cleaning](#data-cleaning)
- [Data Analysis](#data-analysis)
- [Results](#results)
- [Reference](#reference)

  ### Project Overview
  - A 3-year forecast for sales of vehicles.

- Change in daily sales
   ![Rplot01](https://github.com/taiwoamao1/Vehicle-sales-/assets/112169247/b5d9d162-7cba-4a53-b8b6-81ae9ff39452)

- The project presents a 3-year forecast for the sales of vehicles in the company.

![Rplot05](https://github.com/taiwoamao1/Vehicle-sales-/assets/112169247/fdb8d5c4-35d7-4c12-9d04-9398c27759a2)


### Data sources

Secondary data was used for the analysis sourced from FRED.

### Tools 
-R Prograaming 

### Data cleaning
The data was identified for the analysis.

### Data Analysis
- The data was analysed using 3 models to determine the best forecasting method. 3 years was set for the forecast.
- The 1st method used was the Seasonal naives method a benchmarking method in forecasting.
- The 2nd method is exponential time series.
- 3rd method - Arima model.
### Results
- The result of the analysis produced 3 residual reports:
  - Seaonal naives = Residual SD = 1.374.
  - Ets= Residual SD = 0.9472.
  - Arima model= Residual SD = 1.099091.
 
  #### Residuals for seasonal naives
    
    ![Rplot03](https://github.com/taiwoamao1/Vehicle-sales-/assets/112169247/e9f3d0db-fb93-48f6-80c8-f7e8111b9a56)
  #### Residuals for ETS
   ![Rplot06](https://github.com/taiwoamao1/Vehicle-sales-/assets/112169247/f5f87504-4434-4415-9fd7-5806d7571006)


  #### Residuals from ARIMA model
    
   ![Rplot04](https://github.com/taiwoamao1/Vehicle-sales-/assets/112169247/b2593a2c-dc69-4b9c-97ad-c2f4aef55ebb)



Seasonal naives show the average mean each month is the same as the following month.

ARIMA model- shows a steady flow in the trend.
- From the above result of the residuals the best-fit forecasting model is the exponential time series (ETS) with  Ets= Residual SD = 0.9472. The lower the value the better the fit.

### Below is the forecasting result for the next 3 years. 


Forecasts:
- Forecast       Lo 80    Hi 80     Lo 95    Hi 95
- Feb 2024       15.54404 14.13552 16.95257 13.389889 17.69820
- Mar 2024       16.63110 14.94405 18.31814 14.050989 19.21120
- Apr 2024       17.13853 15.32907 18.94799 14.371203 19.90586
- May 2024       16.51495 14.59084 18.43905 13.572282 19.45761
- Jun 2024       16.30945 14.27715 18.34174 13.201320 19.41757
- Jul 2024       16.06519 13.93018 18.20019 12.799975 19.33040
- Aug 2024       15.30621 13.07321 17.53921 11.891132 18.72129
- Sep 2024       15.20643 12.87956 17.53330 11.647785 18.76507
- Oct 2024       15.45417 13.03707 17.87127 11.757532 19.15080
- Nov 2024       15.50521 13.00113 18.00928 11.675549 19.33486
- Dec 2024       15.46553 12.87739 18.05367 11.507319 19.42374
- Jan 2025       15.88372 13.21417 18.55327 11.800999 19.96644
- Feb 2025       15.62851 12.67652 18.58050 11.113831 20.14319
- Mar 2025       16.09067 12.95629 19.22505 11.297045 20.88429
- Apr 2025       16.63855 13.36750 19.90961 11.635912 21.64120
- May 2025       15.98377 12.58154 19.38601 10.780503 21.18704
- Jun 2025       16.13630 12.60776 19.66485 10.739856 21.53275
- Jul 2025       16.06270 12.41222 19.71319 10.479764 21.64564
- Aug 2025       15.60508 11.83660 19.37357  9.841681 21.36849
- Sep 2025       15.72558 11.84268 19.60848  9.787192 21.66396
- Oct 2025       16.06392 12.06988 20.05795  9.955562 22.17227
- Nov 2025       15.98737 11.88521 20.08954  9.713650 22.26110
- Dec 2025       15.86370 11.65619 20.07122  9.428861 22.29854
- Jan 2026       16.29086 11.98056 20.60115  9.698832 22.88288
- Feb 2026       16.12128 11.54511 20.69744  9.122639 23.11992
- Mar 2026       16.60248 11.83637 21.36859  9.313337 23.89162
- Apr 2026       17.21340 12.29486 22.13195  9.691136 24.73567
- May 2026       16.73955 11.67315 21.80594  8.991169 24.48793
- Jun 2026       16.92723 11.71718 22.13727  8.959148 24.89530
- Jul 2026       16.78269 11.43284 22.13253  8.600806 24.96457
- Aug 2026       16.20447 10.71839 21.69055  7.814232 24.59470
- Sep 2026       16.37313 10.75412 21.99215  7.779591 24.96667
- Oct 2026       16.46352 10.71465 22.21240  7.671378 25.25567
- Nov 2026       16.47476 10.59889 22.35063  7.488396 25.46112
- Dec 2026       16.59492 10.59475 22.59509  7.418451 25.77139
- Jan 2027       16.52279 10.40084 22.64474  7.160071 25.88551

### Reference
- FRED: https://fred.stlouisfed.org/series/TOTALSA 
