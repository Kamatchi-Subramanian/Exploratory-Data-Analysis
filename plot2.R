#Remove NA entries from the table
c6<- na.omit(c5)
#Create a plot with no active data plotted. 
plot(c6$Time, c6$Global_active_power, type ="n", xlab = " ", ylab="Global Active Power(kilowatts)")
#Add line plot to it and create png file
lines(c6$Time, c6$Global_active_power)
dev.copy(png, file="plot2.png")
dev.off()
