dataset <- read.csv("NYPD_Motor_Vehicle_Collisions.csv", TRUE, ",")
#initial data exploration 
#install.packages("lubridate")
library(lubridate)
library(dplyr)

#viewing  the ehad and tail of the data
head(dataset)
tail(dataset)

names(dataset)
#changing our date format
##as.Date(mydate, format = "%m/%d/%Y")
data$DATE 

data$DATE <- as.Date(dataset$DATE, format = "%m/%d/%Y")
data$DATE 

#filtering all data between 2012 and 2018 with the specific columns

dataset %>%
  select(DATE, TIME, BOROUGH, ZIP.CODE, LATITUDE, LONGITUDE, LOCATION, ON.STREET.NAME, CROSS.STREET.NAME, OFF.STREET.NAME, NUMBER.OF.PERSONS.INJURED, NUMBER.OF.PERSONS.KILLED,
         NUMBER.OF.PEDESTRIANS.INJURED, NUMBER.OF.PEDESTRIANS.KILLED, NUMBER.OF.CYCLIST.INJURED, NUMBER.OF.CYCLIST.KILLED, NUMBER.OF.MOTORIST.INJURED,
         NUMBER.OF.MOTORIST.KILLED, CONTRIBUTING.FACTOR.VEHICLE.1, CONTRIBUTING.FACTOR.VEHICLE.2, CONTRIBUTING.FACTOR.VEHICLE.3, CONTRIBUTING.FACTOR.VEHICLE.4,
         CONTRIBUTING.FACTOR.VEHICLE.5, UNIQUE.KEY, VEHICLE.TYPE.CODE.1, VEHICLE.TYPE.CODE.2, VEHICLE.TYPE.CODE.3, VEHICLE.TYPE.CODE.4, VEHICLE.TYPE.CODE.5) %>%
  filter(between(DATE, as.Date("2012-07-01"), as.Date("2018-12-31")))

#verify the filter
dataset2 <- read.csv("2012to2018.csv", TRUE, ",")
head(dataset2)

tail(dataset2)

