#load data from folders

setwd("C:/DataScienceR/ExplorePrj1")

#read only rows containing data from the dates 2007-02-01 and 2007-02-02

importdata <- read.table("./sub-household_power_consumption.txt", sep=";", header =TRUE)

#Create Histogram (Plot1.png)

hist(importdata[,3], col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.copy(png,filename="./Plot1.png",  width = 480, height = 480, units = "px")
dev.off()

