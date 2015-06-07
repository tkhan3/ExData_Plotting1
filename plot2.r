if ( ! "load.R" %in% list.files())
{
setwd("C:\\Data Science\\ExData_Plotting1\\ExData_Plotting1")
}
source("load.R")
png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

with(data_feb,plot(DateTime,Global_active_power,type="l",ylab= "Global Active Power (kilowatts)",xlab=""))
dev.off()