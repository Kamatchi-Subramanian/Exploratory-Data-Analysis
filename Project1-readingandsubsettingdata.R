c1<-read.table("household_power_consumption.txt", sep=";", header = TRUE,na.strings ="?")
#above line reads the input text file and puts NA wherever there is "?".
c1$Date<-as.Date(c1$Date, format = "%d/%m/%Y")
#The above line formats the Date correctly.
c1$timetemp <- paste(c1$Date, c1$Time)
c1$Time <- strptime(c1$timetemp, format = "%Y-%m-%d %H:%M:%S")
# The above two lines format the time to the right format. 
#Subsetting the days of February 1 and February 2
c5<- subset(c1, c1$Date=="2007-02-01"| c1$Date=="2007-02-02")
#Create a column for weekdays in the table
c5$weekday<- weekdays(as.Date(c5$Date))


