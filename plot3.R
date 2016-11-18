## The objective of this script is to recreate the plot3 graphic sample
## From project - "Your task is to reconstruct the following plots below,
##                all of which were constructed using the base plotting system."

## Set working directory, check and get raw data if required.
work_dir <- "C:/Users/konecnya/A Master File/Training/Coursera/4. Exploratory Data Analysis/EDA Project 1"
setwd(work_dir)

## Load the household power consumption data
## I used this strategy as the data set is common each plot
source("load_power.R")

## Plot 3
## Initialize png device - I found a number of problems went away vs. doing a dev.copy from screen
png(file = "plot3.png", width = 480, height = 480)

## Decided to use with (df, {}) to improve readability
with(df_household_power_consumption, {
  
  plot(Time, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  
  lines(Time, Sub_metering_2, col = "red")
  
  lines(Time, Sub_metering_3, col = "blue")
  
  legend("topright",
         col = c("black", "red", "blue"),
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty = 1,
         lwd = 2)
})

# Finished so turn device off
dev.off()

## Final housekeeping, clean up the memory
rm(list=ls())