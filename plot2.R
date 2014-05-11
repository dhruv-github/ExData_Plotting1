### 5/5/14 ### 
### Course project 1 ###
### Plot 2 ###

infile <- "feb_2007_household_power_consumption.txt"
input <- read.delim(infile,sep=";",stringsAsFactors=F)

input$datetime <- as.POSIXct(strptime(paste(input$Date,input$Time,sep=","),format="%d/%m/%Y,%H:%M:%S"))
input2 <- subset(input,grepl("^1\\/2",Date) | grepl("^2\\/2",Date) )

png(file="plot2.png")
plot(input2$datetime,input2$Global_active_power,type="n",ylab="Global Active Power (kilowatts)",xlab="")
lines(input2$datetime,input2$Global_active_power)
dev.off()