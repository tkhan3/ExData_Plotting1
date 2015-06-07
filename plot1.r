if ( !"load.R" %in% list.files()
{
setwd("C:\\Data Science\\ExData_Plotting1\\ExData_Plotting1")
}
source("load.R")
png(filename = "plot.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

with(data_feb,hist(Global_active_power,col="red",ylim=c(0,1200),main="Global Active Power",xlab="Global Active Power (kilowatts)"))
dev.off()