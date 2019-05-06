#more questions to answer 
#
by_zipcode <- dataset3 %>% group_by(ZIP.CODE)
#head(by_zipcode)

by_zipcode$vehiclesFCUK = 5 - ((as.character(by_zipcode$VEHICLE.TYPE.CODE.1) == "") + 
                                 (as.character(by_zipcode$VEHICLE.TYPE.CODE.2) == "") + 
                                 (as.character(by_zipcode$VEHICLE.TYPE.CODE.3) == "") + 
                                 (as.character(by_zipcode$VEHICLE.TYPE.CODE.4) == "") + 
                                 (as.character(by_zipcode$VEHICLE.TYPE.CODE.5) == "") )
by_zipcode$isMultiCar = (by_zipcode$vehiclesFCUK >=3)

head(by_zipcode)
a = as.data.frame(by_zipcode %>%summarise(s = sum(vehiclesFCUK)))
a

max(a$s)
##for chi square for colliosions in jan and may

by_zipcode$vehiclesFCUK = 5 - ((as.character(by_zipcode$VEHICLE.TYPE.CODE.1) == "") + 
                                 (as.character(by_zipcode$VEHICLE.TYPE.CODE.2) == "") + 
                                 (as.character(by_zipcode$VEHICLE.TYPE.CODE.3) == "") + 
                                 (as.character(by_zipcode$VEHICLE.TYPE.CODE.4) == "") + 
                                 (as.character(by_zipcode$VEHICLE.TYPE.CODE.5) == "") )
by_zipcode$isMultiCar = (by_zipcode$vehiclesFCUK >=3)
by_zipcode$isMultiCar
summary(by_zipcode$isMultiCar)

truef<-data.frame(by_zipcode[which(by_zipcode$isMultiCar=="TRUE"),])
##for jan
true.jan<- truef%>%
  select(DATE, TIME, 
         BOROUGH, ZIP.CODE, LATITUDE, LONGITUDE, LOCATION, 
         ON.STREET.NAME, CROSS.STREET.NAME, OFF.STREET.NAME,
         NUMBER.OF.PERSONS.INJURED, NUMBER.OF.PERSONS.KILLED, 
         NUMBER.OF.PEDESTRIANS.INJURED, NUMBER.OF.PEDESTRIANS.KILLED,
         NUMBER.OF.CYCLIST.INJURED, NUMBER.OF.CYCLIST.KILLED, NUMBER.OF.MOTORIST.INJURED, 
         NUMBER.OF.MOTORIST.KILLED, CONTRIBUTING.FACTOR.VEHICLE.1, 
         CONTRIBUTING.FACTOR.VEHICLE.2, CONTRIBUTING.FACTOR.VEHICLE.3, 
         CONTRIBUTING.FACTOR.VEHICLE.4, CONTRIBUTING.FACTOR.VEHICLE.5,
         UNIQUE.KEY, VEHICLE.TYPE.CODE.1, VEHICLE.TYPE.CODE.2, VEHICLE.TYPE.CODE.3, VEHICLE.TYPE.CODE.4, VEHICLE.TYPE.CODE.5) %>%
  filter(between(DATE, as.Date("2017-01-01"), as.Date("2017-01-31")))
true.jan$DATE
head(true.jan)
nrow(true.jan)
##6212
#for may
true.may<- truef%>%
  select(DATE, TIME, BOROUGH, ZIP.CODE,
         LATITUDE, LONGITUDE, LOCATION, ON.STREET.NAME,
         CROSS.STREET.NAME, OFF.STREET.NAME, NUMBER.OF.PERSONS.INJURED, 
         NUMBER.OF.PERSONS.KILLED, NUMBER.OF.PEDESTRIANS.INJURED, 
         NUMBER.OF.PEDESTRIANS.KILLED, NUMBER.OF.CYCLIST.INJURED,
         NUMBER.OF.CYCLIST.KILLED, NUMBER.OF.MOTORIST.INJURED,
         NUMBER.OF.MOTORIST.KILLED, CONTRIBUTING.FACTOR.VEHICLE.1,
         CONTRIBUTING.FACTOR.VEHICLE.2, CONTRIBUTING.FACTOR.VEHICLE.3, 
         CONTRIBUTING.FACTOR.VEHICLE.4, CONTRIBUTING.FACTOR.VEHICLE.5, 
         UNIQUE.KEY, VEHICLE.TYPE.CODE.1, VEHICLE.TYPE.CODE.2,
         VEHICLE.TYPE.CODE.3, VEHICLE.TYPE.CODE.4, VEHICLE.TYPE.CODE.5) %>%
  filter(between(DATE, as.Date("2017-05-01"), as.Date("2017-05-31")))
head(true.may)
nrow(true.may)
## 1136
# total no. of collisions in jan
##17,551
#total no. of collisions in may
##21,012
##proportion-jan
6212/17551
### 0.3539399
##proportion- may
1136/21012
by_zipcode$DAT
###0.05406434


```