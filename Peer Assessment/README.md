---
title: "Getting and Cleaning Data Course Project"
author: "Fahad Usman"
date: "Sunday, June 22, 2014"
output: html_document
---

This file describes how **run_analysis.R** script works.

1. Although, **run_analysis.R** downloads and unzip the file for you but you can get the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it. 

2. Set the Path where you downloaded and unzipped the data. Also, Make sure the **run_analysis.R** script and Data are both in the current working directory.

3. Use source("run_analysis.R") command in RStudio.

4. You will find two output files are generated in the current working directory:
- **merged_clean_data.txt** (7.88 Mb): This was created using a Dataframe called MeanStdData with 10299*68 dimensions.
- **tidy_data_with_means.txt** (218 Kb): it contains a data frame called result with 180*68 dimension.

5. Finally, use data <- read.table("tidy_data_with_means.txt") command in RStudio to read the file. Since we are required to get the average of each variable for each activity and each subject, and there are 6 activities and 30 subjects in total, we have 180 rows with all combinations for each of the 66 features.
