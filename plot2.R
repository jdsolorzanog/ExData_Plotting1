# Loading data
power_consumption <- read.csv("~/household_power_consumption.txt", sep=";")

# Subsetting data
power_cons_day <- subset(power_consumption,power_consumption$Date == "1/2/2007" | power_consumption$Date == "2/2/2007")

# Formatting the data properly
power_cons_day$Date <- as.Date(power_cons_day$Date, format = "%d/%m/%Y")
power_cons_day$Time <- strptime(power_cons_day$Time, format = "%H:%M:%S")
power_cons_day[1:1440,"Time"] <- format(power_cons_day[1:1440,"Time"],"2007-02-01 %H:%M:%S")
power_cons_day[1441:2880,"Time"] <- format(power_cons_day[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

plot(power_cons_day$Time,as.numeric(as.character(power_cons_day$Global_active_power)),type="l",xlab="",ylab = "Global Active Power (Kilowatts)")
title(main = "Global Active Power vs Time")