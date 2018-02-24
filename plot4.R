## Plot into the new PNG device then close off
png(filename='plot4.png', width=480, height=480)

## Devide space into 2x2
par(mfrow=c(2,2))

# Plot 1
plot(dt$GlobalActivePower ~ dt$DateTime,type = "l", xlab= "",ylab="Global Active Power")
# Plot 2
plot(dt$Voltage/1000 ~ dt$DateTime,type = "l", xlab= "datetime",ylab="Voltage")
# Plot 3
plot(dt$SubMetering1~dt$DateTime,type="l",ylab = "Energy sub metering", xlab="", col ="black")
lines(dt$SubMetering2~dt$DateTime, col = "red")
lines(dt$SubMetering3~dt$DateTime, col= "blue")
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),bty="n")
# Plot 4
plot(dt$GlobalReactivePower ~ dt$DateTime,type = "l", xlab= "datetime",ylab="Global_reactive_power")
dev.off()