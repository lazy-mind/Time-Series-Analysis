data(coagulation, package='faraway')
ls()
coagulation
# plot(coag~diet)
plot(coag~diet, data = coagulation)
summary(coagulation)