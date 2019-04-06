# Installing
install.packages("readr")
# Loading
library("readr")

input_data <- read.csv("input.csv", header=TRUE, sep=",")
class(input_data)

plot(x = input_data$obciazenie_karty, y = input_data$dlugosc_trasy,
     pch = 16, frame = FALSE,
     xlab = "obciazenie karty [dolary]", ylab = "dlugosc trasy [kilometry]", col = "#2E9FDF")
points(mean(input_data$obciazenie_karty), mean(input_data$dlugosc_trasy), col = "red", pch = 19)
