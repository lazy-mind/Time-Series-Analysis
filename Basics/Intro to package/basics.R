# create a dataset
data.1 = c(35,8,10,23,42)
data.1
print(data.1)
summary(data.1) # 5 statistics summary
mean(data.1)
sum(data.1/5)
sd(data.1)

# historgram
small.size.dataset=c(91,49,76,112,97,42,70, 100, 8, 112, 95, 90, 78, 62, 56, 94, 65, 58, 109, 70, 109, 91, 71, 76, 68, 62, 134, 57, 83, 66)
hist(small.size.dataset)
hist(small.size.dataset, xlab='my data points', main="Historgram my data", freq = F)
hist(small.size.dataset, xlab='my data points', main="Historgram my data", freq = F, col='green')
lines(density(small.size.dataset))
lines(density(small.size.dataset), col='red', lwd = 5)
hist(small.size.dataset, xlab='my data points', main="Historgram my data", freq = F, col='green', breaks = 10)
lines(density(small.size.dataset), col='red', lwd = 5)

#scatter plot
set.seed = 2016
Test_1_scores = round(rnorm(50,78,10))
Test_2_scores = round(rnorm(50,70,14))
Test_1_scores
Test_2_scores
plot(Test_2_scores ~ Test_1_scores)

plot(Test_2_scores ~ Test_1_scores, main="test scores", xlab="test 1", ylab = "test 2")
plot(Test_2_scores ~ Test_1_scores, main="test scores", xlab="test 1", ylab = "test 2", col="blue")
