df=read.table("C://Users//Parv//Documents//ML//datasets//household_power_consumption.txt",header=TRUE,sep=";",as.is=FALSE)

subData <- df[df$Date %in% c("1/2/2007","2/2/2007"),]

datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subData$Global_active_power)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")





