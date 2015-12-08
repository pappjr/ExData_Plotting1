# read data in
d <- read.csv('household_power_consumption.txt',header=TRUE,sep=";",stringsAsFactors=FALSE)

# subset data to include only 2/1/2007 and 2/2/2007
d <- d[d$Date=="1/2/2007" | d$Date=="2/2/2007",]

# open png file
png(filename="plot2.png",width=480,height=480)

# create line graph to spec
plot(as.POSIXct(paste(d$Date, d$Time), format="%d/%m/%Y %H:%M:%S"),d$Global_active_power,type="l",main="",xlab="",ylab="Global Active Power (kilowatts)")

# close png file
dev.off()