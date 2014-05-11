PowCon = read.csv("household_power_consumption.txt",sep=";",strip.white=TRUE);
isSubset <- PowCon$Date == '1/2/2007' | PowCon$Date == '2/2/2007'
subsetPowCon <- PowCon[isSubset,]
windows();
y <- as.numeric(levels(subsetPowCon$Global_active_power))[subsetPowCon$Global_active_power];
x <- strptime(paste(subsetPowCon$Date,subsetPowCon$Time),"%d/%m/%Y %H:%M:%S")
plot(x, y, type="l", xlab="", ylab="Global Active Power (kilowatts)") 

dev.copy(png, file = "plot2.png")
dev.off()
