# Installing
install.packages("readr")
# Loading
library("readr")

input_data <- read.csv("D:/Studia/przedmioty/semestr 4/MS/metody-statystyczne-projekt/source/input.csv", header=TRUE, sep=",")

class(input_data)

plot(x = input_data$obciazenie_karty, y = input_data$dlugosc_trasy,
     pch = 16, frame = FALSE,
     xlab = "obciazenie karty [dolary]", ylab = "dlugosc trasy [kilometry]", col = "#2E9FDF")

A <- lm(formula = input_data$dlugosc_trasy ~ input_data$obciazenie_karty)
B <- lm(formula = input_data$obciazenie_karty ~ input_data$dlugosc_trasy)

summary(A)
summary(B)

abline(A, col="black", lwd=1, lty=1)

matlines(input_data$obciazenie_karty, predict(A, int="c"), lty="dashed", col="red")

abline(B, col="blue", lwd=3, lty=2)




