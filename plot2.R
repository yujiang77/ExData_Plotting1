## Plot into the new PNG device then close off

png(filename='plot2.png', width=480, height=480)
plot(dt$GlobalActivePower ~ dt$DateTime,type = "l", xlab= "",ylab="Global Active Power (kilowatts)")
dev.off()