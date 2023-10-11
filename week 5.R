#  my economic grades

myEconomicGrades <- c(100,99)

my_economic_grades <- c(100,99)

# import json file ----

flights<-jsonlite::fromJSON("data/international_flights.json")

## data information ----
data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)

data1$file
data1$meta$name
data1$meta$source_link

flights$data[[1]]# give me the first data's information

flights<-list(
  data= list(data1) #vector of many data
)

saveRDS(flights,file="data/flights.rds")

#import json ----

filepath = flights$data[[1]]$file
flightsData <- jsonlite::fromJSON(filepath)

flights$data[[1]]$data_frame <- flightsData

flights$data[[1]]$data_frame

