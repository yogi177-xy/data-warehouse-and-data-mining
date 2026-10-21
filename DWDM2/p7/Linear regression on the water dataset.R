install.packages("HSAUR2")     # run once
library(HSAUR2)
data(water)
head(water)

# Check linearity visually
plot(water$hardness, water$mortality,
     xlab = "Hardness", ylab = "Mortality", pch = 19, col = "blue",
     main = "Mortality vs Hardness")

# Fit the model
model <- lm(mortality ~ hardness, data = water)
summary(model)
abline(model, col = "red", lwd = 2)

# Predict mortality for hardness = 88
predict(model, newdata = data.frame(hardness = 88))