hist(AirPassengers,
     breaks = c(100, 200, 350, 500, 650),   # starts at 100, then 150-wide bins from 200
     xlim = c(100, 700),
     col = "orange", main = "AirPassengers", xlab = "Passengers")