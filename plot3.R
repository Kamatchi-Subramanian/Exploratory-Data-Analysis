#Code for plot 3
#create a plot without actual data in it. Assign Y-axis label
plot(c6$Time, c6$Sub_metering_1, type ="n", xlab = " ", ylab="Energy Sub metering")
#Add lines for Sub_metering_1, Sub_metering_2, Sub_metering_3.
#Assign color when needed, default is black.
lines(c6$Time, c6$Sub_metering_1)
lines(c6$Time, c6$Sub_metering_2, col="red")
lines(c6$Time, c6$Sub_metering_3, col="blue")
#Add legend to plot on topright. 
legend("topright",c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), lwd=c(2,2,2), col = c("black","red", "blue"))
#Copy to png file and close
dev.copy(png, file="plot3.png")
dev.off()


