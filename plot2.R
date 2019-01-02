# avoid time consuming process if object is loaded
if(!exists('house_power')) {source('household_power_import.R')}

png(filename = 'plot2.png', width = 480, height = 480)

with(house_power, 
     plot(datetime, Global_active_power, 
          type = 'l',
          ylab = 'Global active power (kilowatts)'))

dev.off()
