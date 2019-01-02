source('household_power_import.R')

?par

png(filename = 'plot1.png', width = 480, height = 480)
dev.cur()

hist(house_power$Global_active_power, col='red',
     main = 'Global active power',
     xlab = 'Global active power (kilowatts)')

dev.off()
