matplot(mtcars[, c("mpg", "qsec")], type = "l", lty = 1, lwd = 2,
        col = c("red", "blue"),
        xlab = "Car index", ylab = "Value", main = "mpg and qsec in mtcars")
legend("topright", legend = c("mpg", "qsec"), col = c("red", "blue"), lty = 1)