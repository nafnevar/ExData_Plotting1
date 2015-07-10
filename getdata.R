
getData <- function() {
  if (!file.exists('household_power_consumption_subset.csv')) {
    data <- read.table('household_power_consumption.txt',header = TRUE, sep = ";", na.strings = "?")
    data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
    df <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
    write.csv(df, file = "household_power_consumption_subset.csv",row.names=TRUE)     
    df
  } else {
    df <- read.table('household_power_consumption_subset.csv',header = TRUE, sep = ",", na.strings = "NA")
  }
  
}