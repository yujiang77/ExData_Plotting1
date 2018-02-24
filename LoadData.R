library(tidyverse)
library(lubridate)

## Read the txt file -> Convert the Data format -> filter the date as required -> Add a DateTime column
dt <- read_csv2("household_power_consumption.txt") %>%
        mutate(Date = dmy(Date)) %>%
        filter(Date >= "2007-02-01" & Date <= "2007-02-02") %>%
        mutate(datetime = as_datetime(paste(dt$Date,dt$Time)))

## Rename the column names        
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
                'SubMetering1','SubMetering2','SubMetering3', 'DateTime')
colnames(dt)<-cols

## Convert all the Chr column into Double
dt <- type_convert(dt)
