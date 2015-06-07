input <- read.table("C:\\stat_learning\\household_power_consumption.txt",header=T,comment.char = "",sep=";",na.string="?",nrow=5)
classes <- sapply(input,class)
input <- read.table("C:\\stat_learning\\household_power_consumption.txt",header=T,comment.char = "",sep=";",na.string="?",colClasses=classes)
attach(input)
names(input)
dim(input)
x <- paste(Date, Time)
input$DateTime <- strptime(x,"%d/%m/%Y	%T")
data_feb <- subset(input,Date == "1/2/2007" | Date == "2/2/2007")

png(filename = "plot3.png",
    width = 480, height = 480)

attach(data_feb)
with(data_feb,plot(DateTime,Sub_metering_1,type="l",ylab=" Energy sub metering",xlab=""))
lines(DateTime,Sub_metering_2,col="red",type="l")
lines(DateTime,Sub_metering_3,col="blue",type="l")
legend("topright",lwd=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()