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
The focus of this text is to document my journey and iterative coding of "run_analysis.R" .  This script is intended to collect, work with, and clean a data set to meet the 3 tidy requirements (i. Each variable forms a column. ii. Each observation forms a row. iii. Each type of obervational unit forms a table. Hadley Wickham).   For documentation on data and transformations use this link [Codebook](https://github.com/KonecnyA/GACD-Final-Project/blob/master/CodeBook.md)

## Background ##
- My Setup:
	- Windows 8.1 Enterprise Operating System
	- R Version 3.3.2
	- RStudio Version 1.0.44

## Common to plot1.R, plot2.R, plot3.R & plot4.R ##
### Step 1 Load the data correctly ###
I attempted the first load of the text file into a data frame. I then did "dim()", "head()", "str()" and "summary()". Here is what I learned:

1. There was 2075259 rows (observations) and 9 columns (variables) - matched information in CodeBook.
2. The variable names were in the first row ("headers = TRUE) - names matched information in the CodeBook.
3. The semicolon ";" was being used as the separator ("sep = ";"")
4. The first 8 variables being read in as Factor and the 9th variable as num

I did a second load

### Step 2 Subset data for only dates 2007-02-01 and 2007-02-02 ###
### Step 3 Convert Date / Time variables to Date / Time classes ###

## plot1.R ##
## plot2.R ##
## plot3.R ##
## plot4.4 ##

## Closing Thoughts ##
- P

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