### 5/9/14 ### 
### Course project 1 ###
### Plot 3 ###

infile <- "feb_2007_household_power_consumption.txt"
input <- read.delim(infile,sep=";",stringsAsFactors=F)

input$datetime <- as.POSIXct(strptime(paste(input$Date,input$Time,sep=","),format="%d/%m/%Y,%H:%M:%S"))
input2 <- subset(input,grepl("^1\\/2",Date) | grepl("^2\\/2",Date) )

png(file="plot3.png")
plot(input2$datetime, input2$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(input2$datetime, input2$Sub_metering_1)
lines(input2$datetime, input2$Sub_metering_2,col="red")
lines(input2$datetime, input2$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red","blue"))
dev.off()