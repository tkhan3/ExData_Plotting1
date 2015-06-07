input <- read.table("C:\\stat_learning\\household_power_consumption.txt",header=T,comment.char = "",sep=";",na.string="?",nrow=5)
classes <- sapply(input,class)
input <- read.table("C:\\stat_learning\\household_power_consumption.txt",header=T,comment.char = "",sep=";",na.string="?",colClasses=classes)
attach(input)
names(input)
dim(input)
data_feb <- subset(input,Date == "1/2/2007" | Date == "2/2/2007")
x <- paste(Date, Time)
input$DateTime <- strptime(x,"%d/%m/%Y	%T")
attach(input)
names(input)