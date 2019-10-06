
# Linear Regression
plot(co2, main="CO2 Concentration")
(co2.linear.model = lm(co2 ~ time(co2)))
abline(co2.linear.model)

# assess the residual: is it normal residual ?
co2.lm = lm(co2 ~ time(co2))
co2.residuals = resid(co2.lm)
hist(co2.residuals, main="histogram fo residuals")
qqnorm(co2.residuals)
qqline(co2.residuals)
# time plot
plot(co2.residuals ~ time(co2))
# zoom in
plot(co2.residuals ~ time(co2), xlim=c(1960,1963), main = "zoomed")



# another dataset: sleep, 2 drugs, 20 observation, 3 variables
plot(extra~group, data = sleep, main = "Extra sleep each group")
attach(sleep)
extra.1 = extra[group==1]
extra.2 = extra[group==2]
# box plot: median not mean
t.test(extra.1, extra.2, paired = TRUE, alternative = "two.sided")




# Correlation
# help(trees)
pairs(trees, pch = 21, bg = c("red"))
cov(trees) # this not consider units, that's why wired
#dataset estimate of correlation: divide by (n-1) !!!!


