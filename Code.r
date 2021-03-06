library(ggplot2) 
library(stats)
library(dplyr)
library(ggvis)
library(jsonlite)
#install.packages("ggthemes")
#library(ggthemes)
#install.packages("lubridate")
library("lubridate")
library(data.table)

setwd("~/Documents/WorkWork2016/ACP/Data")

options(digits=22)

#functions

p <- function(..., sep='') {
  paste(..., sep=sep, collapse=sep)
}

#return a result in function
getMLResults = function (user_id) {
  ID = 1: MaxDayOfStudy
  result = data.frame(ID,DayOfStudy, TreeAccuracy, TreePrecision, TreeRecall,
                      NaiveAccuracy, NaivePrecision, NaiveRecall)
  
  names(result) = c("user_id","Day","TreeAccuracy", "TreePrecision", "TreeRecall", "NaiveAccuracy",
                    "NaivePrecision", "NaiveRecall")                    
  return(result)
}

#time
unix2POSIXct  <- function (time)structure(time, class = c("POSIXt", "POSIXct"))


allresults$timestamp <- unix2POSIXct(allresults$timestamp / 1000) #devide by 1000 because we recorded in miliseconds
  
  dates <- as.POSIXlt(c(allresults$timestamp))
  dates <- floor_date(dates,"second")
  allresults$hours <- sprintf("%02d",hour(dates))
  allresults$minutes <- paste0(sprintf("%02d",minute(dates)))
  allresults$seconds <- paste0(sprintf("%02d",second(dates)))
  allresults$weekday <- wday(dates) # Week starts on Sunday
  
  allresults$time <- paste(allresults$hours,allresults$minutes,allresults$seconds, sep=":")
  allresults$time.lub <- hms(allresults$time)
  
  allresults$day <- yday(dates)
  
  allresults$day <-allresults$day - min(allresults$day) + 1
  
#read or write csv
write.csv(allresults,"allDataNotCleaned.csv")

readresults <- read.csv("allDataNotCleaned.csv")

#subset
mlData=subset(readresults, select=c("context", "value","user_id"))

GoodMLDataPeopleWithRejection <- subset(GoodMLData, GoodMLData$user_id %in% c(49,41,31,16))
  
#number of rows
numberOfRows=nrow(mlData)

#column bind
GoodMLData = cbind(mlData_labelAndID,context1)

#db

dbDriver <- dbDriver("MySQL") 
mydb <- dbConnect(dbDriver, host="aware.com", dbname="Visur_999", user="Viuri_999", password="9999") 
allresults <- dbGetQuery(mydb,"select * from notifications where cast(user_id as signed) > 0 order by timestamp asc") #or desc


#rename a column
names(activity_3)[11] <- "proximity"
  
#display columns 
colnames(locations)

#count unique
apps=plugin_acpunlock3_all_1[plugin_acpunlock3_all_1$timestamp>last_session_time&plugin_acpunlock3_all_1$timestamp<last_locking_time,]
    
applications_foreground_1_unique = as.data.frame(table(apps$applications_foreground))
    
applications_foreground_1_unique = applications_foreground_1_unique[applications_foreground_1_unique$Freq !=0,]
    
activity_1lplnss[i,20]=nrow(applications_foreground_1_unique)
  
#see if one var is in all possible vals  
session_contains_app=nrow(applications_foreground_1_unique[applications_foreground_1_unique$Var1==app_all[j,1],])

#remove columns
result1=subset( result, select = -c(1,2,3,4 ) )

#copy character
mood_1[i,7]=as.character(General2[nrow(General2),3])

#use numeric for big numbers
mood_1[i,16]=as.numeric(General2[nrow(General2),12])
sum(as.numeric(...))

#count column and row
a=1:5
b=data.frame(a,a)
c=ncol(b)+1
b[1,c]=3
nrow(b)


#csv better format
#write.table(resultClus, "u12.csv", row.names=F, col.names=T, sep=",")
