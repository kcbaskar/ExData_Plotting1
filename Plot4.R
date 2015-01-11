# Load data
source('load_data.R')

#open png file
png(filename="plot4.png", width=480, height=480)

#par(mar=c(2, 2, 1, 1))
par(mfrow=c(2, 2))

#1. plot row1 col1 (plot2) now
plot(data$DateTime, 
     data$Global_active_power, 
     type="l",
     col="black", 
     xlab="", 
     ylab="Global Active Power", 
     main="")

#2. plot row1 col2 (new plot) now
plot(data$DateTime, 
     data$Voltage, 
     type="l",
     col="black", 
     xlab="datetime", 
     ylab="Voltage", 
     main="")

#3. plot row2 col1 (plot2) now
plot(data$DateTime, 
     data$Sub_metering_1, 
     type="l",
     col="black", 
     xlab="", 
     ylab="Energy sub metering", 
     main="")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", 
       lwd=1, 
       lty=1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


#4. plot row2 col2 (new plot) now
plot(data$DateTime, 
     data$Global_reactive_power, 
     type="l",
     col="black", 
     xlab="datetime", 
     ylab="Global_reactive_power",
     main="")

#close the png file
dev.off()
