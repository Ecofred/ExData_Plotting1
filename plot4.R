# TITLE: plot4

# avoid time consuming process if object is loaded
if(!exists('house_power')) {source('household_power_import.R')}

png(filename = 'plot4.png', width = 480, height = 480)
par(mfrow=c(2,2))



# names(house_power)


with(house_power, 
     {
       plot(datetime, Global_active_power, 
            type = 'l',
            xlab = '',
            ylab = 'Global active power')
       
     
       plot(datetime, Voltage,
            type = 'l')
       
       
       # 'none' plot
       plot(datetime, Sub_metering_1, 
            type = 'n',
            xlab='',
            ylab = 'Energy sub metering')
       
       # the 3 lines
       lines(datetime, Sub_metering_1, col='black')
       lines(datetime, Sub_metering_2, col='red')
       lines(datetime, Sub_metering_3, col='blue')
       
       legend('topright', paste0('Sub_metering_', 1:3),
              col = c(1,'red','blue'),
              bty='n',
              lty=1)
       
       plot(datetime, Global_reactive_power,
            type = 'l',
            ## as mentionned in the ?par
            ## does not work on the present device
            # lwd=0.5 
            )
     })



dev.off()
