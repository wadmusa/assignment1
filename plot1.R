#Plot 1
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot1.png', width = 480, height = 480, units='px')
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
dev.off()