## The objective of this script is to recreate the plot1 graphic sample
## From project - "Your task is to reconstruct the following plots below,
##                all of which were constructed using the base plotting system."

## Set working directory, check and get raw data if required.
work_dir <- "C:/Users/konecnya/A Master File/Training/Coursera/4. Exploratory Data Analysis/EDA Project 1"
setwd(work_dir)

## Load the household power consumption data
## I used this strategy as the data set is common each plot
source("load_power.R")

## Plot 1
## Initialize png device - I found a number of problems went away vs. doing a dev.copy from screen
png(file = "plot1.png", width = 480, height = 480)

## Most of the variables are straightforward wrt the histogram.
## Of note - in order to get the x axis to show 0, 2, 4, 6 - overrode the default and crafted to match plot1 graphic sample
hist(df_household_power_consumption$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     xlim = c(0,6),
     ylim = c(0,1200),
     xaxt = "n")
axis(1, at = seq(0,7.9, by = 2))

# Finished so turn device off
dev.off()

## Final housekeeping, clean up the memory
rm(list=ls())