if ( ! "load.R" %in% list.files())
{
setwd("C:\\Data Science\\ExData_Plotting1\\ExData_Plotting1")
}
source("load.R")
png(filename = "plot3.png",
    width = 480, height = 480)

attach(data_feb)
with(data_feb,plot(DateTime,Sub_metering_1,type="l",ylab=" Energy sub metering",xlab=""))
lines(DateTime,Sub_metering_2,col="red",type="l")
lines(DateTime,Sub_metering_3,col="blue",type="l")
legend("topright",lwd=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()