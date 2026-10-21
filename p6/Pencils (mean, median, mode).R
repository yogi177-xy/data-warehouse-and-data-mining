pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
names(pencils) <- paste0("Box", 1:10)

mean(pencils)     # 12
median(pencils)   # 9.5

# R has no built-in statistical mode, so define one
get_mode <- function(v) {
  t <- table(v)
  as.numeric(names(t)[t == max(t)])
}
get_mode(pencils)   # 9