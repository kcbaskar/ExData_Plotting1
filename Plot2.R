# Load data
source('load_data.R')

#open png file
png(filename="plot2.png", width=480, height=480)

#plot 2 now
plot(data$DateTime, 
     data$Global_active_power, 
     type="l",
     col="black", 
     xlab="", 
     ylab="Global Active Power (kilowatts)", 
     main="")

#close the png file
dev.off()

