---
title: "Getting and Cleaning Data Course Project"
author: "Fahad Usman"
date: "Sunday, June 22, 2014"
output: html_document
---

Course Project for the Getting and Cleaning Data Coursera Course, originally 
prepared for the June session and resubmitted with minor edits for the July
session.

# Introduction

The run_analysis.R script is designed to download, clean-up, and export a "tidy" 
version of *Human Activity Recognition Using Smartphones Data Set*. This data 
set is a "Human Activity Recognition database built from the recordings of 30 
subjects performing activities of daily living (ADL) while carrying a 
waist-mounted smartphone with embedded inertial sensors."[1]
    
[1]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "UCI Archive"

# Data Processing Steps

The script executes the following tasks

1. Preliminaries
    - Prepares a data directory
    - Downloads the compressed archive
    - Extracts the archive
    - Data will be downloaded in your working directory by creating a Data directory (If not available)
    - To find out whats your working directory is, you can use "getwd()" function
2. Importing Data
    - Read in the activity_labels.txt, features.txt, X_train.txt, X_test.txt,
    subject_train.txt, subject_test.txt, y_train.txt, & y_test.txt files
        * This guide suggests all First upper case Letter in a column name to combine multiple 
        words into one variable name. 
3. Clean up the Data
    - Identify variable names that include "mean" and "std", but which do not 
    contain "meanfreq" or "angle"
        * The latter two are higher-level, derived measurements that are not 
        useful in this case
    - Filter the train and test data sets to include only variable identified in
    the previous step
4. Create the Complete Data Set
    - Bind together the activity ids, subject ids, and main data
    - Combine the testing and training data
    - Provide descriptive activity names
5. Create the Tidy Data Set
    - Format the data into long format
    - Cast the data, taking the mean of the data points of each variable for 
    each activity and subject combination
    - Export the data as a text file


# Using the Analysis file


1. Although, **run_analysis.R** downloads and unzip the file for you but you can get the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it. 

2. Set the Path where you downloaded and unzipped the data. Also, Make sure the **run_analysis.R** script and Data are both in the current working directory.

3. Use source("run_analysis.R") command in RStudio to begin.

4. You will find two output files are generated in the current working directory:
- **merged_clean_data.txt** (7.88 Mb): This was created using a Dataframe called MeanStdData with 10299*68 dimensions.
- **tidy_data_with_means.txt** (218 Kb): it contains a data frame called result with 180*68 dimension.

5. Finally, use data <- read.table("tidy_data_with_means.txt") command in RStudio to read the file. Since we are required to get the average of each variable for each activity and each subject, and there are 6 activities and 30 subjects in total, we have 180 rows with all combinations for each of the 66 features.
