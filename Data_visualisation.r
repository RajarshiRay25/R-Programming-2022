# Data Visualisation using charts and graph

label <- c("C","Python","JavaScript","R")
values <- c(60,90,70,110)

pie(values,label,main = "Programming Language Stats",col = rainbow(length(label)))

help("round")

percentStats <- round(100*values/sum(values),1)

pie(values,labels = percentStats,main = "Programming Language Stats",col = rainbow(length(label)))

## 3D piechart

### install plotrix library

install.packages("plotrix")
library("plotrix")

label <- c("C","Python","JavaScript","R")
values <- c(60,90,70,110)

pie3D(values,labels = label,main="Programming Language Stats",explode = 0.2)


## Create histogram

vals <- c(10,15,20,25,30,35,40,45,50,55,60,65,70,75,80)

hist(vals,border = "blue",xlab = "VALUES",col = "red")

## Load Dataset to work

data("airquality")
View(airquality)

## plot 2D axis values

plot(airquality$Ozone,airquality$Wind)
plot(airquality$Solar.R,airquality$Temp,col='blue',type = "h")
