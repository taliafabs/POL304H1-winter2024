library(dplyr)
## read the data
hprice <- read.csv("hprice.csv")

## question 2
## dummy variable that is 1,0 for whether or not its within 3 miles of incinerator
## 5000m = 5km ~ 3miles
hprice$nearinc <- ifelse(hprice$dist<8000,1,0)

## question 3

## the number of houses in the data per year
house_count_per_year <- table(hprice$year)
print(house_count_per_year)

## another way to do it
house_count_1978 <- sum(hprice$year==1978)
house_count_1981 <- sum(hprice$year==1981)

## there were 179 houses included in 1978, 142 included in 1981

## question 4
## average house price in 1978 near vs far from incinerator

hprice_1978 <- hprice %>%
  filter(year==1978)

hprice_1978_treatment <- hprice_1978 %>%
  filter(nearinc==0)

hprice_1978_control <- hprice_1978 %>%
  filter(nearinc==1)




# mean_treatment_1978 <- mean(hprice_1978_treatment$lprice, na.rm=TRUE)
# mean_control_1978 <- mean(hprice_1978_control$lprice, na.rm=TRUE)
# 


## question 5
## average house price 1981 near vs far from incinerator
hprice_1981 <- hprice %>%
  filter(year==1981) 



## question 6


