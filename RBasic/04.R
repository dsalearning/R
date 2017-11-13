# read.csv
ubike <- read.csv(file = "ubike-weather-big5.csv",
                  fileEncoding = 'BIG-5',
                  stringsAsFactors = F)

ubike <- read.csv(file = file.choose(),
                  fileEncoding = 'BIG-5',
                  stringsAsFactors = F)

ubike <- read.csv(file = "https://github.com/snexuz/2016DSP_dplyr/raw/master/data/ubike-weather-big5.csv",
                  fileEncoding = 'BIG-5',
                  stringsAsFactors = F)

# file.choose()/ghjghgj

# read.csv
ubike <- read.csv(file = "ubike-weather-big5.csv",
                  colClasses = c("factor","integer","integer","factor","factor",
                                 "numeric","numeric","integer","numeric","integer",
                                 "integer","numeric","numeric", "integer","integer",
                                 "numeric","numeric","numeric", "numeric","numeric",
                                 "numeric", "numeric","numeric"), 
                  fileEncoding = 'BIG-5',
                  stringsAsFactors = F)

###############
head(ubike)
tail(ubike)
str(ubike)


ubike$date <- as.Date(ubike$date)

months(ubike$date[1])

summary(ubike)

###########

table(ubike$sarea)

ubike$sarea == '大安區'
head(ubike[which(ubike$sarea == '大安區'),])

head(ubike[which(ubike$sarea == '大安區' | ubike$sarea == '信義區'),])

head(ubike[which(ubike$sarea %in% c('大安區','信義區','中正區')),])


###############

table(ubike[which(ubike$sarea %in% c('大安區','信義區','中正區')), 'sarea'])

library(dplyr)

ubike %>%
  filter(sarea %in% c('大安區','信義區','中正區')) %>%
  select(sarea) %>%
  table()

ubike %>%
  select(date,	hour,	sarea,	sna,	avg.sbi) %>%
  mutate(ttt = ifelse(avg.sbi > 20, ">20", "<= 20")) %>%
  group_by(date, hour, sna) %>%
  summarise(mean(avg.sbi))






















