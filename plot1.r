if ( !"load.R" %in% list.files()
{
setwd("C:\\Data Science\\ExData_Plotting1\\ExData_Plotting1")
}
source("load.R")
with(data_feb,hist(Global_active_power,col="red",ylim=c(0,1200),main="Global Active Power",xlab="Global Active Power (kilowatts)"))
