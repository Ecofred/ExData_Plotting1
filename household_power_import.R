library(lubridate)
library(dplyr)
library(readr)

house_power_file <- 
  "exdata_data_household_power_consumption/household_power_consumption.txt"


house_power <-
  read_delim(
    house_power_file,
    delim = ';',
    col_types = cols('c', 'c', 'd', 'd', 'd', 'd', 'd', 'd', 'd'),
    na = '?'
  ) %>%
  mutate(datetime = dmy_hms(paste(Date, Time))) %>%
  # filter as requested in the exercise
  filter(between(datetime,
                 ymd_hms('2007-02-01 00:00:00'),
                 ymd_hms('2007-02-02 23:59:00')))
