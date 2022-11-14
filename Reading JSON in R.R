

install.packages("rjson")
library(rjson)

mydata <- fromJSON(file = "http://makemeanalyst.com/wp-content/uploads/2017/06/sample_json.txt")

mydata

Mydata <- data.frame(mydata)
View(Mydata)

Inputdata <- fromJSON(file = "Input_data.json")
data.frame(Inputdata)

library(jsonlite)
Yelp_data <- fromJSON(file = "yelp_academic_dataset_business.json")
Yelp_data

#This is NDJSON file ---Newline Delimited JSON File
data <- stream_in(file("yelp_academic_dataset_business.json"))
data

str(data)

yelp_flat <- flatten(data)

data.frame(yelp_flat)
View(yelp_flat)

library(tibble)
yelp_tbl <- as_data_frame(yelp_flat)
view(yelp_tbl)
