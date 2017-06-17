#Load and prep data froum house load power file into table dt

source('loaddata.R')


#Generate histogram chart

png(filename = "plot1.png",
    width = 480, height = 480)

hist(dt$Global_active_power, col="red",
     main="Global Active Power", xlab="Global Active Power (kilowatts)",
     breaks=12,  ylim = c(0,1200), xlim=c(0,6))

dev.off()