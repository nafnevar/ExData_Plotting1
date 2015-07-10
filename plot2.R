

source('getdata.R')
data <- getData()
png(filename="plot2.png", width=480, height=480)
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)
plot(data=data,Global_active_power ~ Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()

