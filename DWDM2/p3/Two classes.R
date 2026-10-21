A <- c(76,35,47,64,95,66,89,36,84)
B <- c(51,56,84,60,59,70,63,66,50)

# (i)
cat("Class A: mean", mean(A), " median", median(A), " range", diff(range(A)), "\n")
cat("Class B: mean", mean(B), " median", median(B), " range", diff(range(B)), "\n")

# (ii)
boxplot(A, B, names = c("Class A","Class B"),
        col = c("lightblue","lightgreen"),
        main = "Exam Results", ylab = "Marks")