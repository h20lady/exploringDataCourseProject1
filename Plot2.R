#load data from folders

setwd("C:/DataScienceR/ExplorePrj1")

#read only rows containing data from the dates 2007-02-01 and 2007-02-02

importdata <- read.table("./sub-household_power_consumption.txt", sep=";", header =TRUE)

#Create Line Plot (Plot2.png)

x <- as.Date(importdata$Date)
y <- importdata[,3]

plot(y, type="l", xlab =NA, ylab = "Global Active Power(kilowatts)", xaxt="n")
mtext("Fri", side =1)
mtext("Thu", side =1, adj=0)
mtext("Sat", side =1, adj=1)

dev.copy(png,filename="./Plot2.png",  width = 480, height = 480, units = "px")
dev.off()

