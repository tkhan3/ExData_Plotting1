if ( ! "load.R" %in% list.files())
{
setwd("C:\\Data Science\\ExData_Plotting1\\ExData_Plotting1")
}
source("load.R")
png(filename = "plot4.png",
    width = 480, height = 480)

attach(data_feb)
par(mfrow=c(2,2))
with(data_feb,plot(DateTime,Global_active_power,type="l",ylab= "Global Active Power (kilowatts)",xlab=""))
with(data_feb,plot(DateTime,Voltage,type="l",ylab="Voltage",xlab="datetime"))
with(data_feb,plot(DateTime,Sub_metering_1,type="l",ylab=" Energy sub metering",xlab="",mar=c(4,2,1,1)))
lines(DateTime,Sub_metering_2,col="red",type="l")
lines(DateTime,Sub_metering_3,col="blue",type="l")
legend("topright",lwd=1,bty="n",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.7)
with(data_feb,plot(DateTime,Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime"))
dev.off()
