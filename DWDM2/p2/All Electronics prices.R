price <- c(1,1,5,5,5,5,5,8,8,10,10,10,10,12,14,14,14,15,15,15,15,15,15,
           18,18,18,18,18,18,18,18,18,20,20,20,20,20,20,20,20,21,21,21,21,21,
           25,25,25,25,25,25,25,28,28,30,30,30,33,33,33,33,33,33,33,
           35,35,35,35,35,35,35,36,40,45,46,52,70)

price <- sort(price)
depth <- 3
bins <- split(price, ceiling(seq_along(price) / depth))
smoothed <- lapply(bins, function(b) rep(round(mean(b), 2), length(b)))
print(bins)
print(smoothed)