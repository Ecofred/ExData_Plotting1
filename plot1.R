# TITLE: plot4

# avoid time consuming process if object is loaded
if(!exists('house_power')) {source('household_power_import.R')}

png(filename = 'plot1.png', width = 480, height = 480)
dev.cur()

hist(house_power$Global_active_power, col='red',
     main = 'Global active power',
     xlab = 'Global active power (kilowatts)')

dev.off()
