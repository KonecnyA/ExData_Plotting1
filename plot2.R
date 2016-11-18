## The objective of this script is to recreate the plot2 graphic sample
## From project - "Your task is to reconstruct the following plots below,
##                all of which were constructed using the base plotting system."

## Set working directory, check and get raw data if required.
work_dir <- "C:/Users/konecnya/A Master File/Training/Coursera/4. Exploratory Data Analysis/EDA Project 1"
setwd(work_dir)

## Load the household power consumption data
## I used this strategy as the data set is common each plot
source("load_power.R")

## Plot 2
## Initialize png device - I found a number of problems went away vs. doing a dev.copy from screen
png(file = "plot2.png", width = 480, height = 480)

## Have listed to show each item and was easier adding and removing iteratively to match the sample graph
plot(df_household_power_consumption$Time,
     df_household_power_consumption$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

# Finished so turn device off
dev.off()

## Final housekeeping, clean up the memory
rm(list=ls())