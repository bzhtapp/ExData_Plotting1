#Load and prep data froum house load power file into table dt

source('loaddata.R')


#Generate histogram chart

png(filename = "plot4.png",
    width = 480, height = 480)

par( mfrow= c(2,2))

#1st plot
with(dt, plot(type="l", x=datetime, y=Global_active_power, ylab="Global Active Power (kilowatts)") )

#2nd plot
with(dt, plot(type="l", x=datetime, y=Voltage) )

#3rd plot
with(dt, plot(x=dt$datetime, y=dt$Sub_metering_1, type="l", col="black", ylab="Energy sub metering"))
with(dt, points( x=dt$datetime, y=dt$Sub_metering_2, type="l", col="red"))
with(dt, points( x=dt$datetime, y=dt$Sub_metering_3, type="l", col="blue"))

legend("topright", lty=c(1,1,1), col= c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#4th plot
with(dt, plot(type="l", x=datetime, y=Global_reactive_power) )

dev.off()