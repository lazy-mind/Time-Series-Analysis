purely_random_process = ts(rnorm(100))
acf(purely_random_process,type= 'covariance')
(acf(purely_random_process,type= 'covariance'))

# Corrograph
acf(purely_random_process,main="correlogram")
# not much correlation later, because pure random number generation
(acf(purely_random_process,main="correlogram"))
