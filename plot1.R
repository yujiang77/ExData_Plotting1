## Plot into the new PNG device then close off

png(filename='plot1.png', width=480, height=480)
hist(dt$GlobalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()