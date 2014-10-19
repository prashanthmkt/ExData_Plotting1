 ## Getting full data
 data_full<- read.csv("./Data/household_power_consumption.txt", header=T,sep=";",na.strings="?", nrows=2075259,check.names=F,comment.char=" ",quote="\")

data_full$Date<- as.Date(data_full$Date,format="%d/%m/%y")

## Subsetting the data
data<-subset(data_full,subset=(Date>='2007-02-01"&Date<="2007-02-02"))
rm(data_full)
Date time<-paste(as.Date(data$Date),data$Time)
dat$Date time<-as.POSIXct(datetime)
## plot2
plot(data$Global_active_power~data$Datetime,type="l",ylab="Global Active Power(kilowatts)",xlab="")

dev.copy(png,file="plot2.png",height=480,width=480)
dev.off()

