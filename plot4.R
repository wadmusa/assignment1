
# Plot 4
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot4.png', width = 480, height = 480, units='px')
par(mfrow = c(2, 2))
plot(data$Time, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
plot(data$Time, data$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')
plot(data$Time, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(data$Time, data$Sub_metering_2, col = 'red')
lines(data$Time, data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
plot(data$Time, data$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
dev.off()