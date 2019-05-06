# proportion of collisions in 2016 resulted in injury or death of a cyclist
cyclistsinjured <- sum(dataset4$NUMBER.OF.CYCLIST.INJURED, na.rm = TRUE)
cyclistsinjured

cyclists_killed_and_injured <- cyclistskilled + cyclistsinjured
cyclists_killed_and_injured
proportion <- 29291/229787
proportion
filter(dataset100, BOROUGH == "BROOKLYN")

dataset101 <- dataset100[which(dataset100$BOROUGH == "BROOKLYN" ),]


dataset101
#create new datasets by changing the borough names to bronx, staten island, manhattan and queens

#filter it using alcohol involvement after changing and apply it to each of the borough
dataset103[which
           (dataset103$CONTRIBUTING.FACTOR.VEHICLE.1 == "Alcohol Involvement" | 
               dataset103$CONTRIBUTING.FACTOR.VEHICLE.2 == "Alcohol Involvement" |
               dataset103$CONTRIBUTING.FACTOR.VEHICLE.3 == "Alcohol Involvement" | 
               dataset103$CONTRIBUTING.FACTOR.VEHICLE.4 == "Alcohol Involvement" | 
               dataset103$CONTRIBUTING.FACTOR.VEHICLE.5 == "Alcohol Involvement"), ]

#obtain the numbers fopr each of the boroughs
#0.0002272752, 0.0001862476,0.0001555810, 0.0002170796, 0.0002085688

boroughs <- c(0.0002272752, 0.0001862476,0.0001555810, 0.0002170796, 0.0002085688)
max(boroughs)

#check for unique with any na values
a <- unique(dataset2$UNIQUE.KEY)
length(a)
class(a)
head(a)

#run regression or year on year collisons

numbercollisions <-  c(203729, 206030, 217692, 229787, 230997, 231467)
numbercollisions
year <-  c(1 ,2,3,4,5,6)
modnyc <- lm(numbercollisions ~ year)
summary(modnyc)



