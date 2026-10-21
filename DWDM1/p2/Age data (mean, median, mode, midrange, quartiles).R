age <- c(13,15,16,16,19,20,20,21,22,22,25,25,25,25,30,33,33,35,35,35,35,36,40,45,46,52,70)

# (a) mean and median
mean(age)      # 29.96
median(age)    # 25

# (b) mode and modality
tab   <- table(age)
modes <- as.numeric(names(tab[tab == max(tab)]))
modes          # 25 and 35
length(modes)  # 2 -> bimodal

# (c) midrange
(min(age) + max(age)) / 2   # 41.5

# (d) / Program 11: quartiles
Q1 <- quantile(age, 0.25)   # 20
Q3 <- quantile(age, 0.75)   # 35
Q1; Q3