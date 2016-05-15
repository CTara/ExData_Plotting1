


# set the working directory
setwd("C:/Users/Documents/COURSERA/PROJECT")

#download from url and unzip
  if(!file.exists("./"))
  fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  filepath <- file.path(getwd(), "Electric_power_consumption.zip")
  download.file(fileurl,filepath) 
  

  if(!file.exists("./"))
  
  unzip("./Electric_power_consumption.zip")
  
#read data 
  
  electric_files<-file('./household_power_consumption.txt')
  electric_data<-read.table(text=grep("^[1,2]/2/2007",readLines(electric_files),value=TRUE), sep = ';', col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), na.strings = '?')
  
##########Plot1
  
  if(!file.exists('figure')) dir.create('figure')
  png(filename='./figure/plot1.png',width=480,height=480,units='px')
  with(electric_data,hist(Global_active_power,xlab='Global Active Power (Kilowatts)',main='Global Active Power',col='red'))
  dev.off()

  
  
  
  
  
  

