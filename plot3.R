# TITLE: plot3

# avoid time consuming process if object is loaded
if(!exists('house_power')) {source('household_power_import.R')}

png(filename = 'plot3.png', width = 480, height = 480)
# names(house_power)
with(house_power, 
     {
       # 'none' plot
       plot(datetime, Sub_metering_1, 
            type = 'n',
            ylab = 'Energy sub metering')
       
       # the 3 lines
       lines(datetime, Sub_metering_1, col='black')
       lines(datetime, Sub_metering_2, col='red')
       lines(datetime, Sub_metering_3, col='blue')
       
       legend('topright', paste0('Sub_metering_', 1:3),
              col = c(1,'red','blue'),
              lty=1)
     })



dev.off()
