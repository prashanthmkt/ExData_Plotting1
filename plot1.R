## getting fulldata

data<- read.table(("household_power_consumption.txt"),sep=";",header=TRUE)

## To Make Histogram

hist (as.numeric(data$Global_active_power), xlab="Global Active Power(kilowatts)",ylab="Frequency", main="Global Active Power", col="red")

## To copy png file

dev.copy(png,file="plot1.png", height=480,width=480)

dev.off()

