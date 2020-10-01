df=read.table("C://Users//Parv//Documents//ML//datasets//household_power_consumption.txt",header=TRUE,sep=";",as.is=FALSE)

subData<-df[df$Date %in% c("1/2/2007","2/2/2007"),]

globalactivepower<-as.numeric(subData[["Global_active_power"]])

globalreactivepower<-as.numeric(subData[["Global_reactive_power"]])

glb=globalactivepower/1000

datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


subData["Sub_metering_1"]=as.numeric(subData$Sub_metering_1)

subData["Sub_metering_2"]=as.numeric(subData$Sub_metering_2)

subData["Sub_metering_3"]=as.numeric(subData$Sub_metering_3)

subData["Voltage"]=as.numeric(subData$Voltage)

par(mfrow=c(2,2))

plot(datetime,globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(datetime,subData$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(datetime,subData$Sub_metering_1,type="l",ylab="Energy Sub metering")
lines(datetime,subData$Sub_metering_2,type="l",col="red")
lines(datetime,subData$Sub_metering_3,type = "l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2.5,lty=1,col=c("black","red","blue"))


plot(datetime,subData$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

















