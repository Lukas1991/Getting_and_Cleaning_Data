Getting and Cleaning Data Project
=========================

#Unzip the source ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

  into a folder on your local drive, say C:\Users\yourname\Documents\R\

#2Put run_analysis.R to C:\Users\yourname\Documents\R\UCI HAR Dataset\

#3in RStudio: setwd("C:\\Users\\yourname\\Documents\\R\\UCI HAR Dataset\\")

#4then: source("run_analysis.R")

   The latter will run the R script, it will read the dataset and write these files:

   data_set_with_the_averages.txt -- 219kb

#5The script normally runs for ~30 seconds, but the exact number depends on your system.

#6If you want to see the data in your Rstudio,please use data <- read.table("data_set_with_the_averages.txt") to read the    latter and you can see it in the Rstudio.
