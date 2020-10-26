#plot 1
png("rplot1.png", width = 480, height = 480)
with(used_data, hist(Global_active_power, col = "red", 
                     main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))
dev.off()

