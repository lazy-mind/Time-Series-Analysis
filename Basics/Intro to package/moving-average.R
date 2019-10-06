# Announcement of the company may have impact that last 2 days

# moving average of order 2: 2 days back MA(2)
noise = rnorm(10000)

ma_2 = NULL

# get ma2 process
for (i in 3:10000) {
	ma_2[i] = noise[i]+0.7*noise[i-1]+0.2*noise[i-2]
}

# shift data
moving_average_process = ma_2[3:10000]

moving_average_process = ts(moving_average_process)

par(mfrow=c(2,1))
plot(moving_average_process, main = "order 2", col = "blue")
acf(moving_average_process, main="moving_average_process acf")
# see that have no auto correlation with t =0 after t =2, which is right because we dont have info 
