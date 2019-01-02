library(lubridate)
library(dplyr)
library(readr)

# GETTING THE FILE
house_power_file <- 
  "household_power_consumption"
house_power_url <-
  'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(url = 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip',
              destfile = paste0(house_power_file,'.zip'))

unzip(zipfile = paste0(house_power_file,'.zip'),
      exdir = getwd()) 


# LOAD + SUBSET + FORMAT DATETIME
house_power <-
  read_delim(
    paste0(house_power_file, '.txt'),
    delim = ';',
    col_types = cols('c', 'c', 'd', 'd', 'd', 'd', 'd', 'd', 'd'),
    na = '?'
  ) %>%
  mutate(datetime = dmy_hms(paste(Date, Time))) %>%
  # filter as requested in the exercise
  filter(between(datetime,
                 ymd_hms('2007-02-01 00:00:00'),
                 ymd_hms('2007-02-02 23:59:00')))
