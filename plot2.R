#Reading the data
if(!file.exists('data')) dir.create('data')
fileUrl <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
download.file(fileUrl, destfile = "./data/household_power_consumption.zip")
unzip("./data/household_power_consumption.zip", exdir = './data')
electric <- file("./data/household_power_consumption.txt")
data <- read.table(text = grep("^[1,2]/2/2007",readLines(electric),value=TRUE), sep = ";", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = "?")
head(data)

# Plot 2
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$Time <- as.POSIXct(paste(data$Date, data$Time))
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot2.png', width = 480, height = 480, units='px')
plot(data$Time, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()
