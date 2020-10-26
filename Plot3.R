#plot 3
png("rplot3.png", width = 480, height = 480)
with(used_data, plot(com_Date, Sub_metering_1, ylab ="Energy sub metering", xlab = "", type = "n"))
with(used_data, lines(com_Date, Sub_metering_1, xlab = "", lty = 1))
with(used_data, lines(com_Date, Sub_metering_2, xlab = "", lty = 1, col = "red"))
with(used_data, lines(com_Date, Sub_metering_3, xlab = "", lty = 1, col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)
dev.off()