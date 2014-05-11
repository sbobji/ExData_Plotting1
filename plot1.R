PowCon = read.csv("household_power_consumption.txt",sep=";",strip.white=TRUE);
isSubset <- PowCon$Date == '1/2/2007' | PowCon$Date == '2/2/2007'
subsetPowCon <- PowCon[isSubset,]
windows();
hist(as.numeric(levels(subsetPowCon$Global_active_power))[subsetPowCon$Global_active_power], main="Global Active Power", xlab="Global 

Active Power (kilowatts)", col="red")
dev.copy(png, file = "plot1.png")
dev.off()
