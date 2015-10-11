#Create a plot frame of 2x2 graphs
par(mfrow=c(2,2))
#Make first graph
plot(c6$Time, c6$Global_active_power, type ="n", xlab = " ", ylab="Global Active Power(kilowatts)")
lines(c6$Time, c6$Global_active_power)
#Make second graph
plot(c6$Time, c6$Voltage, type ="n", xlab = "datetime ", ylab="Voltage")
lines(c6$Time, c6$Voltage)
#Make 3rd graph and remove border around legend by saying bty="n".
plot(c6$Time, c6$Sub_metering_1, type ="n", xlab = " ", ylab="Energy Sub metering")
lines(c6$Time, c6$Sub_metering_1)
lines(c6$Time, c6$Sub_metering_2,  col="red")
lines(c6$Time, c6$Sub_metering_3, col="blue")
legend("topright",bty = "n", c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), lwd=c(2,2,2), col = c("black","red", "blue"))
#Make 4th graph on plot and assign proper x-axis and y-axis labels.
plot(c6$Time, c6$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(c6$Time, c6$Global_reactive_power)
#Copy into png file and close
dev.copy(png, file="plot4.png")
dev.off()

