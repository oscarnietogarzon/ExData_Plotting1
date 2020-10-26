#load data

fileUrl_quiz1 <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl_quiz1, destfile = "./electric_consumption.zip")
unzip("./electric_consumption.zip", exdir = "./")

#load data
library(lubridate)
used_data <- subset(read.table(dir("./")[4], sep = ";", header = T), (dmy(Date) == "2007-02-01" | dmy(Date) == "2007-02-02"))

#right data type
sapply(used_data, FUN = class)
used_data[,1] <- dmy(used_data$Date)
used_data[,2] <- hms(used_data$Time)
used_data[,3:9] <- sapply(used_data[,3:9], FUN = as.numeric)
