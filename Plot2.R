#plot 2
png("rplot2.png", width = 480, height = 480)
used_data$com_Date <- dmy_hms(paste0(used_data$Date, " ", used_data$Time)) #x axis
with(used_data, plot(com_Date, Global_active_power, ylab ="Global Active Power (kilowatts)", xlab = "", type = "n"))
with(used_data, lines(com_Date, Global_active_power, xlab = "", lty = 1))
dev.off()
