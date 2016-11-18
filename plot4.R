## The Objective of this script is to recreate the plot4 graphic sample which has four plots
## From project - "Your task is to reconstruct the following plots below,
##                all of which were constructed using the base plotting system."

## Set working directory, check and get raw data if required.
work_dir <- "C:/Users/konecnya/A Master File/Training/Coursera/4. Exploratory Data Analysis/EDA Project 1"
setwd(work_dir)

## Load the household power consumption data
## I used this strategy as the data set is common each plot
source("load_power.R")

## Plot 4 - Four graphics on one page
## Initialize png device - I found a number of problems went away vs. doing a dev.copy from screen
png(file = "plot4.png", width = 480, height = 480)

## Setup to have 2 rows by 2 columns of plots, tweak the margins for a bit more space
par(mfrow = c(2, 2), mar = c(4, 4, 2, 2))

## with (df{}) do four seperate plots - also makes readability easier
with(df_household_power_consumption, {
  
  ## Plot 1
  plot(Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  
  ## Plot 2
  plot(Time, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
  
  ## Plot 3
  plot(Time, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(Time, Sub_metering_2, col = "red")
  lines(Time, Sub_metering_3, col = "blue")
  
  ## Of specific note here, I positioned the legend setting the x and y coordinates
  ## in order that the Sub_meeting variable names were not cut off.
  ## Perhaps just my setup but I had to do this to match the graphic sample.
  legend(x = strptime("1/2/2007 14:30:00:", format = "%d/%m/%Y %H:%M:%S"),
         y = 40,
         col = c("black", "red", "blue"),
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         bty = "n",
         lty = 1,
         lwd = 2)
  
  ## Plot 4
  plot(Time, Global_reactive_power, type = "l", xlab = "datetime")
})

# Finished so turn device off
dev.off()

## Final housekeeping, clean up the memory
rm(list=ls())