set.seed(500)
data = arima.sim(list(order = c(1,0,1), ar = 0.7, ma = 0.2), n = 10000000)
par(mfcol = c(3,1))
plot(data, main = "ARMA(1,1) Phi1 = 0.7 theta1 = 0.2", xlim=c(0,400))
acf(data, main = "ACF")
acf(data, type = "partial", main="PACF")

# use geometric series to represent

