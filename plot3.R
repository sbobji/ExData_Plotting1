
PowCon = read.csv("household_power_consumption.txt",sep=";",strip.white=TRUE);
isSubset <- PowCon$Date == '1/2/2007' | PowCon$Date == '2/2/2007'
subsetPowCon <- PowCon[isSubset,]
windows();
sm <- subsetPowCon$Sub_metering_1;
y1 <- as.numeric(levels(sm))[sm];
x <- strptime(paste(subsetPowCon$Date,subsetPowCon$Time),"%d/%m/%Y %H:%M:%S")
plot(x, y1, type="l", xlab="", ylab="Energy sub metering") 

sm <- subsetPowCon$Sub_metering_2;
y2 <- as.numeric(levels(sm))[sm];
lines(x,y2, col="red")

lines(x,subsetPowCon$Sub_metering_3, col="blue")

legend("topright", lwd = 1, lty=1, col=c("black","red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3   "));

dev.copy(png, file = "plot3.png")
dev.off()
