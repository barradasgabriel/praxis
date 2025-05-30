install.packages("carData")
install.packages("car")
install.packages("lpSolveAPI")
install.packages("DJL")

library(carData)
library(car)
library(lpSolveAPI)
library(DJL)


input <- matrix(c(17000000, 12500000, 19500000), ncol = 1)


output <- matrix(c(15872100, 9313200, 16422000,
                   48, 30, 39),
                 ncol = 2, byrow = FALSE)


dmu_names <- c("Araraquara", "Itu", "Jacarei")


result <- dm.dea(x = input, y = output, orientation = "i", rts = "crs")


rownames(result$eff) <- c("Araraquara", "Itu", "Jacarei")

print(result$eff)
