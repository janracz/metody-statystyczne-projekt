# Installing
install.packages("readr")
# Loading
library("readr")
library("lmtest")

input_data <- read.csv("d:/Studia/MS/Projekt/input.csv", header=TRUE, sep=",")
class(input_data)

linearModOD <- lm(obciazenie_karty ~ dlugosc_trasy, data=input_data)  
print("Obciazenie karty od dlugosci trasy: ")
print(linearModOD)

linearModDO <- lm(dlugosc_trasy ~ obciazenie_karty, data=input_data)
print("Dlugosc trasy od obciazenia karty: ")
print(linearModDO)

bptest(linearModOD, ~ dlugosc_trasy, studentize = TRUE, data = input_data)
bptest(linearModDO, ~ obciazenie_karty, studentize = TRUE, data = input_data)

dwtest(linearModOD, ~ dlugosc_trasy, data = input_data)
dwtest(linearModDO, ~ obciazenie_karty, data = input_data)

resettest(linearModOD, power=2, type = "regressor", data = input_data)
resettest(linearModDO, power=2, type = "regressor", data = input_data)