df=read.table("C://Users//Parv//Documents//ML//datasets//household_power_consumption.txt",header=TRUE,sep=";",as.is=FALSE)

subData <- df[df$Date %in% c("1/2/2007","2/2/2007"),]

subData["Sub_metering_1"]=as.numeric(subData$Sub_metering_1)
subData["Sub_metering_2"]=as.numeric(subData$Sub_metering_2)
subData["Sub_metering_3"]=as.numeric(subData$Sub_metering_3)

datetime_new = strptime(paste(subData$Date,subData$Time,sep=" "),format ="%d/%m/%y %H:%M:%S" )


png("plot3.png", width=480, height=480)
plot(datetime,subData$Sub_metering_1,type="l",ylab="Energy Sub metering")
lines(datetime,subData$Sub_metering_2,type="l",col="red")
lines(datetime,subData$Sub_metering_3,type = "l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2.5,lty=1,col=c("black","red","blue"))
dev.off()

