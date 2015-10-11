#Plot histogram of Global Active Power. 
#Copy in to the png format and assign a file name. 
hist(c5$Global_active_power, main="Global Active Power", xlab="Glboal Active Power(kilowatts)", col = "red")
dev.copy(png, file="plot1.png")
dev.off()

