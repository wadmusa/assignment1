# Plot 2
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$Time <- as.POSIXct(paste(data$Date, data$Time))
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot2.png', width = 480, height = 480, units='px')
plot(data$Time, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()
