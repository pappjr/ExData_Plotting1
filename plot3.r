# read data in
d <- read.csv('household_power_consumption.txt',header=TRUE,sep=";",stringsAsFactors=FALSE)

# subset data to include only 2/1/2007 and 2/2/2007
d <- d[d$Date=="1/2/2007" | d$Date=="2/2/2007",]

# open png file
png(filename="plot3.png",width=480,height=480)

# create initial plot
plot(as.POSIXct(paste(d$Date, d$Time), format="%d/%m/%Y %H:%M:%S"),d$Sub_metering_1,type="l",main="",xlab="",ylab="Energy sub metering")

# add lines to plot
lines(as.POSIXct(paste(d$Date, d$Time), format="%d/%m/%Y %H:%M:%S"),d$Sub_metering_2,col="red")
lines(as.POSIXct(paste(d$Date, d$Time), format="%d/%m/%Y %H:%M:%S"),d$Sub_metering_3,col="blue")

# add legend to plot
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","blue","red"))

# close png file
dev.off()