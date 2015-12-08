# read data in
d <- read.csv('household_power_consumption.txt',header=TRUE,sep=";",stringsAsFactors=FALSE)

# subset data to include only 2/1/2007 and 2/2/2007
d <- d[d$Date=="1/2/2007" | d$Date=="2/2/2007",]

# open png file
png(filename="plot1.png",width=480,height=480)

# create histogram to spec
hist(as.numeric(d$Global_active_power),main="Global Active Power",xlab="Global Active Power (kilowatts)",col="RED")

# close png file
dev.off()