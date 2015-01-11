# Load data
source('load_data.R')

#open the png file
png(filename="plot1.png", width=480, height=480)

#plot 1 now
hist(data$Global_active_power, 
     col="#ff2500", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")

#close png file
dev.off()
