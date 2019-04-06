# Installing
install.packages("readr")
# Loading
library("readr")

input_data <- read.csv("input.csv", header=TRUE, sep=",")
class(input_data)

linearModOD <- lm(obciazenie_karty ~ dlugosc_trasy, data=input_data)  
print("Obciazenie karty od dlugosci trasy: ")
print(linearModOD)

linearModDO <- lm(dlugosc_trasy ~ obciazenie_karty, data=input_data)
print("Dlugosc trasy od obciazenia karty: ")
print(linearModDO)
