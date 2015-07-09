data <- read.table('./household_power_consumption.txt',header = TRUE,sep=';',colClasses='character')
data <- subset(data, data$Date == '1/2/2007' | data$Date == '2/2/2007')
data$Global_active_power <- as.numeric(data$Global_active_power)
png('plot1.png', width=480, height=480)
hist(data$Global_active_power, col = 'red', 
     ylab = 'Frequency', xlab = 'Global Active Power (kilowatts)', 
     main = 'Global Active Power')
dev.off()