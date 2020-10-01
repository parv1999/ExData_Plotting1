df=read.table("C://Users//Parv//Documents//ML//datasets//household_power_consumption.txt",header=TRUE,sep=";",as.is=FALSE)

subData<-df[df$Date %in% c("1/2/2007","2/2/2007"),]

globalactivepower<-as.numeric(subData[["Global_active_power"]])

glb=globalactivepower/1000
hist(glb,xlab="Global_active_power(Kilowatts)",ylab="Frequency",col="red")
mtext("Global_active_power")








