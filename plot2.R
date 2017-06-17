#Load and prep data froum house load power file into table dt

source('loaddata.R')


#Generate histogram chart

png(filename = "plot2.png",
    width = 480, height = 480)

with(dt, plot(type="l", x=datetime, y=Global_active_power, ylab="Global Active Power (kilowatts)") )


dev.off()