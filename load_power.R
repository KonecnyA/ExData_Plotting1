## Exploratory Data Analysis Course - Week 1 - Project 1
## This is "plot1.R" - README.md and CodeBook.md are also in the repo for your reference

## Set working directory, check and get raw data if required.
work_dir <- "C:/Users/konecnya/A Master File/Training/Coursera/4. Exploratory Data Analysis/EDA Project 1"
setwd(work_dir)

## Location of data - provided by project
file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## Test if "data" directory exists - if no download and unzip file, if yes skip.
if(!file.exists("data")) {
  download.file(file_url, destfile = "household_power_consumption.zip")
  unzip("household_power_consumption.zip", exdir = "data")
}

## Step 1 Load the data correctly ##
## Set appropriate classes for the 9 variables - provided by project
hpc_classes <- c(Date = "character", Time = "character", Global_active_power = "numeric",
                 Global_reactive_power = "numeric", Voltage = "numeric", Global_intensity = "numeric",
                 Sub_metering_1 = "numeric", Sub_metering_2 = "numeric", Sub_metering_3 = "numeric")

## Initial read of CodeBook and exploration of data:
## 1st row is variable names (header = TRUE)
## Separator is semicolon (sep = ";")
## Missing values are "?" (na.string = "?")
## Rather than defaults set variables to appropriate classes (colClasses = hpc_classes)
df_household_power_consumption <- read.table("data//household_power_consumption.txt",
                                             header = TRUE,
                                             sep = ";",
                                             na.strings = "?",
                                             colClasses = hpc_classes)

## Step 2 Subset data for only dates 2007-02-01 and 2007-02-02
## As per project - "examine how household energy usage varies over a 2-day period in February, 2007"
df_household_power_consumption <- df_household_power_consumption[(df_household_power_consumption$Date == "1/2/2007" | df_household_power_consumption$Date == "2/2/2007"),]

## Step 3 Convert Date / Time variables to Date / Time classes
## Date read in is of the format: "%d/%m/%Y"
##df_household_power_consumption$Date <- as.Date(df_household_power_consumption$Date, "%d/%m/%Y")

## Time read in is of the format: "%H:%M:%S"
## hh:mm:ss
##df_household_power_consumption$Time <- strptime(df_household_power_consumption$Time, format = "%H:%M:%S")

## strptime() returns POSIX1t - holds date & time
date_time <- paste(df_household_power_consumption$Date, df_household_power_consumption$Time)
df_household_power_consumption$Time <- strptime(date_time, format = "%d/%m/%Y %H:%M:%S")