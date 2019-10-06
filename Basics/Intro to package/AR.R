set.seed(2016)
N = 1000
phi = 0.4
# phi = 1
Z = rnorm(N,0,1)
X = NULL
X[1] = Z[1]

for (t in 2:N) {
	X[t] = Z[t] + phi*X[t-1]
}

X.ts = ts(X)
par(mfrow = c(2,1))
plot(X.ts, main ="AR(1)")

x.acf = acf(X.ts, main="AR(1) ACF")




set.seed(2016)
N = 1000
# phi = 0.4
phi = 1
Z = rnorm(N,0,1)
X = NULL
X[1] = Z[1]

for (t in 2:N) {
	X[t] = Z[t] + phi*X[t-1]
}

X.ts = ts(X)
par(mfrow = c(2,1))
plot(X.ts, main ="AR(1)")

x.acf = acf(X.ts, main="AR(1) ACF")




# AR(2)
# require(arima)
set.seed(2017)
X.ts <- arima.sim(list(ar = c(0.7,0.2)), n=1000)
par(mfrow = c(2,1))
plot(X.ts, main="AR(2)")
X.acf = acf(X.ts, main="AR(2) ACF")



# AR(2)
# require(arima)
set.seed(2017)
X.ts <- arima.sim(list(ar = c(0.5,-0.4)), n=1000)
par(mfrow = c(2,1))
plot(X.ts, main="AR(2)")
X.acf = acf(X.ts, main="AR(2) ACF")