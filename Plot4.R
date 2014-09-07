#load data from folders

setwd("C:/DataScienceR/ExplorePrj1")

#read only rows containing data from the dates 2007-02-01 and 2007-02-02

importdata <- read.table("./sub-household_power_consumption.txt", sep=";", header =TRUE)

#Create Lattice Plot (Plot4.png)

attach(importdata)
par(las=1)

plot(Sub_metering_1,type="n", xlab = NA, ylab="Energy sub metering", xaxt="n")
with(importdata, lines (Sub_metering_1))
with(importdata, lines (Sub_metering_2, col="red"))
with(importdata, lines (Sub_metering_3, col="blue"))
mtext("Fri", side =1)
mtext("Thu", side =1, adj=0)
mtext("Sat", side =1, adj=1)


legend("topright", lty=c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png,filename="./Plot4.png",  width = 480, height = 480, units = "px")
dev.off()

