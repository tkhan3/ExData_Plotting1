input <- read.table("C:\\stat_learning\\household_power_consumption.txt",header=T,comment.char = "",sep=";",na.string="?",nrow=5)
classes <- sapply(input,class)
input <- read.table("C:\\stat_learning\\household_power_consumption.txt",header=T,comment.char = "",sep=";",na.string="?",colClasses=classes)
attach(input)
names(input)
dim(input)
x <- paste(Date, Time)
input$DateTime <- strptime(x,"%d/%m/%Y	%T")
data_feb <- subset(input,Date == "1/2/2007" | Date == "2/2/2007")

png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

with(data_feb,plot(DateTime,Global_active_power,type="l",ylab= "Global Active Power (kilowatts)",xlab=""))
dev.off()