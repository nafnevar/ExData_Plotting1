

source('getdata.R')
data <- getData()

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

png(filename="plot3.png", width=480, height=480)

plot(data$Datetime,data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(data$Datetime,data$Sub_metering_2, col = 'red')
lines(data$Datetime,data$Sub_metering_3 , col = 'blue')
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 1,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()


