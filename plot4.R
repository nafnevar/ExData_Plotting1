

source('getdata.R')
data <- getData()

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

png(filename="plot4.png", width=480, height=480)

par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
plot(data$Datetime,data$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
plot(data$Datetime,data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
plot(data$Datetime,data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(data$Datetime,data$Sub_metering_2, col = 'red')
lines(data$Datetime,data$Sub_metering_3 , col = 'blue')
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 1,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(data$Datetime,data$Global_reactive_power, type = "l",ylab = "Global_rective_power", xlab = "datetime")
dev.off()


