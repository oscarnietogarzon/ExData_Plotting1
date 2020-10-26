# plot 4
png("rplot4.png", width = 480, height = 480)
par(mar=c(2,4,2.5,1), mfrow=c(2, 2))

with(used_data, plot(com_Date, Global_active_power, ylab ="Global Active Power (kilowatts)", xlab = "", type = "n"))
with(used_data, lines(com_Date, Global_active_power, xlab = "", lty = 1))

with(used_data, plot(com_Date, Voltage, ylab ="Voltage", xlab = "datetime", type = "n"))
with(used_data, lines(com_Date, Voltage, xlab = "", lty = 1))

with(used_data, plot(com_Date, Sub_metering_1, ylab ="Energy sub metering", xlab = "", type = "n"))
with(used_data, lines(com_Date, Sub_metering_2, xlab = "", lty = 1, col = "red"))
with(used_data, lines(com_Date, Sub_metering_1, xlab = "", lty = 1))
with(used_data, lines(com_Date, Sub_metering_3, xlab = "", lty = 1, col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1, bty = "n",
       cex=0.5)

with(used_data, plot(com_Date, Global_reactive_power, xlab = "datetime", type = "n"))
with(used_data, lines(com_Date, Global_reactive_power, xlab = "", lty = 1))
dev.off()

