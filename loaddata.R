
# Set directory to where data file is located
# setwd("E:/R4/Assign1")

library(data.table)
library(dplyr)
library(lubridate)

if ( !exists("dtAll"))  {

  dtAll <- fread("household_power_consumption.txt")

  dtAll$Date <- dmy(dtAll$Date)
  
  dt <- filter(dtAll, Date >= "2007-02-01" & Date <= "2007-02-02")
  
  dt$Time <- hms(dt$Time)
  
  dt$datetime <- dt$Date + dt$Time
  
  dt$Global_active_power <- as.numeric(dt$Global_active_power)
}

