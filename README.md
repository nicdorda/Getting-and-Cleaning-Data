# Getting-and-Cleaning-Data
Repository for Getting and Cleaning Data Course Project

The aim of the project is to clean and extract usable data collected from the accelerometers from the Samsung Galaxy S smartphone in a study.
In this project, you find:
•  run_analysis.R : the R-code run on the data set
•	Tidy.txt : the clean data extracted from the original data using run_analysis.R
•	CodeBook.md : the CodeBook reference to the variables in Tidy.txt
•	README.md : the analysis of the code in run_analysis.R

Libraries Used
The libraries used are data.table and dplyr. 
library(data.table)
library(dplyr)
Instructions
The R script run_analysis.R has been created following the project instructions:
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement.
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names.
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The Result regenerates the file Tiny.txt
