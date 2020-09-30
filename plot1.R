
df=read.table("C://Users//Parv//Documents//ML//datasets//household_power_consumption.txt",header=TRUE,sep=";",as.is=FALSE)

library(ggplot2)

summary(df)
str(df)
head(df)
names(df)

df["Global_active_power"]<-as.numeric(df[["Global_active_power"]])

plot.new()
glb=df$Global_active_power/1000
hist(glb,xlab="Global_active_power(Kilowatts)",ylab="Frequency",col="red")
mtext("Global_active_power")
