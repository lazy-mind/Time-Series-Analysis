# PACF

# AR(2)
rm(list = ls(all = TRUE))
par(mfrow= c(3,1))
phi.1 = 0.6
phi.2 = 0.2
data.ts = arima.sim(n = 500, list(ar = c(phi.1,phi.2)))
plot(data.ts, main = paste("AR with phi.1 = ", phi.1, "phi.2 =", phi.2))
acf(data.ts , main = "ACF")
acf(data.ts , type = "partial", main="PACF")



# AR(3)
rm(list = ls(all = TRUE))
phi.1 = 0.9
phi.2 = -0.6
phi.3 = 0.3
data.ts = arima.sim(n = 500, list(ar = c(phi.1,phi.2,phi.3)))
plot(data.ts, main = paste("AR with phi.1 = ", phi.1, "phi.2 =", phi.2,"phi.3 = ", phi.3))
acf(data.ts , main = "ACF")
acf(data.ts , type = "partial", main="PACF")
# 3 significant spike



# bodyfat
library(isdals)
data(bodyfat)
attach(bodyfat)
pairs(cbind(Fat, Triceps, Thigh, Midarm))
# We see Fat are correlated with Triceps and Thigh quite significantly
# But the problem is:
# Triceps and Thigh are highly correlated
# Without attending this issue, we will lose some statistical power in our analysis
cor(cbind(Fat, Triceps, Thigh, Midarm))

# Goal: Measure the correlation of Fat and Triceps, after controlling for Thigh
# This process is Partialing out the Thigh

# Method: look at residuals of Fat and Triceps, after regressing both of them on Thigh
Fat.hat = predict(lm(Fat~Thigh))
Triceps.hat = predict(lm(Triceps~Thigh))
# see correlation, exclude the part interpreted by Thigh
cor((Fat-Fat.hat),(Triceps-Triceps.hat))

library(ppcor)
pcor(cbind(Fat, Triceps, Thigh))

pcor(cbind(Fat, Triceps, Thigh, Midarm))
Fat.hat = predict(lm(Fat~Thigh+Midarm))
Triceps.hat = predict(lm(Triceps~Thigh+Midarm))
cor((Fat-Fat.hat),(Triceps-Triceps.hat))


