# If the raw data has not been saved, download, unzip, and load it.
# Save it to an .rds file for easy access later.
if (!file.exists('saved_data.rds')) {
    # download if input data file does not exists
    if (!file.exists("data.zip")) {
      download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                    destfile="data.zip")
      unzip("data.zip")  # unzip
    }
    
    # Read data file to memory
    data <- read.csv("data/household_power_consumption.txt", 
                     header=T,
                     na.strings = "?",
                     sep=";",
                     colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
    
    #filter the data to what is required only
    data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
    
    #set the formats for date & time
    data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

    # Save file
    saveRDS(data, file='saved_data.rds')
} else {
  data <- readRDS('saved_data.rds')
}