x = NULL
x[1] = 0
for (i in 2:1000){
	x[i] = x[i-1]+rnorm(1)
}

# create time series
random_walk = ts(x)

plot(random_walk, main="random_walk", xlab = "days", col="blue", lwd=2)
acf(random_walk)
# high correlation, no stationality


# removing the trend
plot(diff(random_walk))
# a white noisd, pure random process
acf(diff(random_walk))