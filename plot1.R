power_consumption <- read.csv("~/household_power_consumption.txt", sep=";")
power_cons_day <- subset(power_consumption,power_consumption$Date == "1/2/2007" | power_consumption$Date == "2/2/2007")
hist(as.numeric(as.character(power_cons_day$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
title(main="Global Active Power")