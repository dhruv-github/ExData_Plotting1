### 5/5/14 ### 
### Course project 1 ###
### Plot 1 ###

infile <- "feb_2007_household_power_consumption.txt"
input <- read.delim(infile,sep=";",stringsAsFactors=F)
input2 <- subset(input,grepl("^1\\/2",Date)|grepl("^2\\/2",Date),stringsAsFactors=F)

png(file="plot1.png")
hist(as.numeric(input2$Global_active_power),main="Global Active Power",
     xlab="Global Active Power (kilowatts)",col="red")
dev.off()
