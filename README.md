# README - Exploratory Data Analysis Project 1 #
## Requirements ##
Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. Your task is to reconstruct the following plots below, all of which were constructed using the base plotting system.

First you will need to fork and clone the following GitHub repository: [https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1 "EDA Project 1")

For each plot you should

- Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
- Name each of the plot files as "plot1.png", "plot2.png", etc.
- Create a separate R code file ("plot1.R", "plot2.R", etc.) that constructs the corresponding plot, i.e. code in "plot1.R" constructs the "plot1.png" plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file.
- Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)

When you are finished with the assignment, push your git repository to GitHub so that the GitHub version of your repository is up to date. There should be four PNG files and four R code files, a total of eight files in the top-level folder of the repo.



## Introduction ##
The focus of this text is to document my journey and iterative coding with the objective of recreating the four sample plots provided. For documentation on the load and transformed data please reference my [CodeBook](https://github.com/KonecnyA/ExData_Plotting1/blob/master/CodeBook.md) .

## Background ##
- My Setup:
	- Windows 8.1 Enterprise Operating System
	- R Version 3.3.2
	- RStudio Version 1.0.44

## Common to plot1.R, plot2.R, plot3.R & plot4.R ##
## load_power.R##
I decided to program this script to prepare the data for the four plots. I download the "household\_power\_consumption.zip" file as identified above. It indicates that the file is 19.7 MB. It is then unzipped into a data directory as "household\_power\_consumption.txt" .

On the first load and using "dim()", "head()", "str()" and "summary()" I learned that the separator was a semicolon ";" so would use "sep = ";".  I also learned that the variable names were in the first row so "headers = TRUE".
I set the classes appropriately for the 9 variables.  The first two "Date" and "Time" are set to "character".  "Global\_active\_power", "Global\_reactive\_power", "Voltage", "Global\_intensity", "Sub\_metering\_1", "Sub\_metering_2" & "Sub\_metering\_3" are set to "numeric"

When the data frame "df\_household\_power\_consumption" is created, there are 2,075,259 rows (observations) and 9 columns (variables). This matches the information provided with the data set.

The next transformation to the data set is to only select data for the first two days in February for the year 2007. This results in 2,880 rows of 9 columns.

The last transformation to the data prior to plotting is to convert the Date and Time. I learned using "strptime()" that it returns a POSIXlt variable which holds both date and time. I decided to use and leverage this for plotting overwriting what was in the original Time variable. I did try setting Date and Time separately and just commented them out.

At this point in time there is a data frame ready to do the four plots that have been requested.

## plot1.R ##
Set working directory and then through source("load_power.R") execute getting the data frame ready for plotting. Then setup the png device notably as per request width 480 pixels x height 480 pixels. It is a histogram plot relatively straightforward to setup except I had to use an x axis overide to show Global Active Power 0,2,4,6. Once the plot is complete, the device is closed and then the file "plot1.png" is compared to the sample to ensure has been done correctly.

## plot2.R ##
Set working directory and then through source("load_power.R") execute getting the data frame ready for plotting. Then setup the png device notably as per request width 480 pixels x height 480 pixels. It is a line plot of Global Active Power vs. Date&Time. Once the plot is complete, the device is closed and then the file "plot2.png" is compared to the sample to ensure has been done correctly. 

## plot3.R ##
Set working directory and then through source("load_power.R") execute getting the data frame ready for plotting. Then setup the png device notably as per request width 480 pixels x height 480 pixels. It is a 3 line plot of each Sub\_metering vs. Date&Time. Lines are added to the initial plot and then a legend.  Once the plot is complete, the device is closed and then the file "plot3.png" is compared to the sample to ensure has been done correctly.

## plot4.R ##
Set working directory and then through source("load_power.R") execute getting the data frame ready for plotting. Then setup the png device notably as per request width 480 pixels x height 480 pixels. This is putting 4 plots on one page, 2 rows by 2 columns.  I set this using the "par()" function and tweak the margins to maximize plot space.  In the fourth plot I had to use the x and y coordinates to place the legend.  If I did not do this then it was not complete in the final plot.  Once the plot is complete, the device is closed and then the file "plot4.png" is compared to the sample to ensure has been done correctly.

## Closing Thoughts ##
- None at this time

## Elements of a good README ##
- Requirements
	- What  is being asked?
- Introduction
	- Given the requirements, What going to achieve at a high level?
	- hyperlink to CodeBook
- Background
	- Readings/Preparation prior to starting
	- System Setup
- .R Script
	- How do scripts work?
	- How do scripts connect?
- Closing Thoughts

*"The CodeBook is about the data, the README is about the code and the .R file scripts my learning adventure."*

© Andrew Konecny 2016 All Rights reserved.