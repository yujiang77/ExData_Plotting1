## Plot into the new PNG device then close off
png(filename='plot3.png', width=480, height=480)
plot(dt$SubMetering1~dt$DateTime,type="l",ylab = "Energy sub metering", xlab="", col ="black")
lines(dt$SubMetering2~dt$DateTime, col = "red")
lines(dt$SubMetering3~dt$DateTime, col= "blue")
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()