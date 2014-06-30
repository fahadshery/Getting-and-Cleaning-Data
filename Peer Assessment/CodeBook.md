---
title: "Getting and Cleaning Data Course Project CodeBook"
author: "Fahad Usman"
date: "Sunday, June 22, 2014"
output: html_document
---

Codebook was generated on 2014-06-22 23:04:47. Data was obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# Introduction

This code book documents the original data source and the variables contained in the tidy output data set.

# Original Source Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

## Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

## License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

--------------------------------------------------------

# Tidy Data Set

The script produces a tidy data set that has one row for each activity and test
subject combination. The variables represent the mean of all the trials for a 
particular measurement for the activity/subject combination.

Out of the original data set, only those variables with "mean" or "std" (standard
diviation) were selected for inclusion in the tidy data set. Variables with 
"meanFreq()" and "angle()" as part of their name were excluded. The retained 
variables are the following:

Variable list and descriptions
------------------------------

Variable name    | Description
-----------------|------------
| subject          | ID the subject who performed the activity for each window sample. Its range is from 1 to 30.
| Activity         | Activity name
| tBodyAccMeanX    | Mean time domain signal for body acceleration in direction X
| tBodyAccMeanY    | Mean time domain signal for body acceleration in direction Y
| tBodyAccMeanZ    | Mean time domain signal for body acceleration in direction Z
| tBodyAccStdX | Standard Deviation time domain signal for body acceleration in direction X
| tBodyAccStdY | Standard Deviation time domain signal for body acceleration in direction Y
| tBodyAccStdZ | Standard Deviation time domain signal for body acceleration in direction Z
| tGravityAccMeanX | Mean time domain signal for gravity acceleration in direction X
| tGravityAccMeanY | Mean time domain signal for gravity acceleration in direction Y
| tGravityAccMeanZ | Mean time domain signal for gravity acceleration in direction Z
| tGravityAccStdX  | Standard Deviation time domain signal for gravity acceleration in direction X
| tGravityAccStdY  | Standard Deviation time domain signal for gravity acceleration in direction Y
| tGravityAccStdZ  | Standard Deviation time domain signal for gravity acceleration in direction Z
| tBodyAccJerkMeanX | Mean derived body linear acceleration in direction X
| tBodyAccJerkMeanY | Mean derived body linear acceleration in direction Y
| tBodyAccJerkMeanZ | Mean derived body linear acceleration in direction Z
| tBodyAccJerkStdX  | Standard Deviation derived body linear acceleration in direction X
| tBodyAccJerkStdY  | Standard Deviation derived body linear acceleration in direction Y
| tBodyAccJerkStdZ  | Standard Deviation derived body linear acceleration in direction Z
| tBodyGyroMeanX    | Mean time domain signal for body gyroscope measurement in direction X
| tBodyGyroMeanY    | Mean time domain signal for body gyroscope measurement in direction Y
| tBodyGyroMeanZ    | Mean time domain signal for body gyroscope measurement in direction Z
| tBodyGyroStdX     | Standard Deviation time domain signal for body gyroscope measurement in direction X
| tBodyGyroStdY     | Standard Deviation time domain signal for body gyroscope measurement in direction Y
| tBodyGyroStdZ     | Standard Deviation time domain signal for body gyroscope measurement in direction Z
| tBodyGyroJerkMeanX | Mean derived body angular velocity in direction X
| tBodyGyroJerkMeanY | Mean derived body angular velocity in direction Y
| tBodyGyroJerkMeanZ | Mean derived body angular velocity in direction Z
| tBodyGyroJerkStdX  | Standard Deviation derived body angular velocity in direction X
| tBodyGyroJerkStdY  | Standard Deviation derived body angular velocity in direction Y
| tBodyGyroJerkStdZ  | Standard Deviation derived body angular velocity in direction Z
| tBodyAccMagMean    | Mean magnitude of time domain signal for body acceleration
| tBodyAccMagStd     | Standard Deviation magnitude of time domain signal for body acceleration
| tGravityAccMagMean | Mean magnitude of time domain signal for gravity acceleration
| tGravityAccMagStd  | Standard Deviation magnitude of time domain signal for gravity acceleration
| tBodyAccJerkMagMean | Mean magnitude of derived body linear acceleration
| tBodyAccJerkMagStd  | Standard Deviation magnitude of derived body linear acceleration
| tBodyGyroMagMean    | Mean magnitude time domain signal for body gyroscope measurement
| tBodyGyroMagStd     | Standard Deviation magnitude time domain signal for body gyroscope measurement
| tBodyGyroJerkMagMean | Mean magnitude derived body angular velocity
| tBodyGyroJerkMagStd  | Standard Deviation magnitude derived body angular velocity
| fBodyAccMeanX | Mean frequency domain signal for body acceleration in direction X
| fBodyAccMeanY | Mean frequency domain signal for body acceleration in direction Y
| fBodyAccMeanZ | Mean frequency domain signal for body acceleration in direction Z
| fBodyAccStdX  | Standard Deviation frequency domain signal for body acceleration in direction X
| fBodyAccStdY  | Standard Deviation frequency domain signal for body acceleration in direction Y
| fBodyAccStdZ  | Standard Deviation frequency domain signal for body acceleration in direction Z
| fBodyAccJerkMeanX | Mean frequency derived body linear acceleration in direction X
| fBodyAccJerkMeanY | Mean frequency derived body linear acceleration in direction Y
| fBodyAccJerkMeanZ | Mean frequency derived body linear acceleration in direction Z
| fBodyAccJerkStdX  | Standard Deviation frequency derived body linear acceleration in direction X
| fBodyAccJerkStdY  | Standard Deviation frequency derived body linear acceleration in direction Y
| fBodyAccJerkStdZ  | Standard Deviation frequency derived body linear acceleration in direction Z
| fBodyGyroMeanX    | Mean frequency domain signal for body gyroscope measurement in direction X
| fBodyGyroMeanY    | Mean frequency domain signal for body gyroscope measurement in direction Y
| fBodyGyroMeanZ    | Mean frequency domain signal for body gyroscope measurement in direction Z
| fBodyGyroStdX     | Standard Deviation frequency domain signal for body gyroscope measurement in direction X
| fBodyGyroStdY     | Standard Deviation frequency domain signal for body gyroscope measurement in direction Y
| fBodyGyroStdZ     | Standard Deviation frequency domain signal for body gyroscope measurement in direction Z
| fBodyAccMagMean   | Mean magnitude of frequency domain signal for body acceleration
| fBodyAccMagStd    | Standard Deviation magnitude of frequency domain signal for body acceleration
| fBodyBodyAccJerkMagMean | Mean frequency magnitude of derived body linear acceleration
| fBodyBodyAccJerkMagStd  | Standard Deviation frequency magnitude of derived body linear acceleration
| fBodyBodyGyroMagMean    | Mean magnitude frequency domain signal for body gyroscope measurement
| fBodyBodyGyroMagStd     | Standard Deviation magnitude frequency domain signal for body gyroscope measurement
| fBodyBodyGyroJerkMagMean | Mean magnitude frequency domain signal for derived body angular velocity
| fBodyBodyGyroJerkMagStd  | Standard Deviation magnitude frequency domain signal for derived body angular velocity
 
Dataset structure
-----------------


```r
str(result)
```

```
'data.frame':        180 obs. of  68 variables:
 $ subject                 : int  1 1 1 1 1 1 2 2 2 2 ...
 $ Activity                : chr  "laying" "sitting" "standing" "walking" ...
 $ tBodyAccMeanX           : num  0.222 0.261 0.279 0.277 0.289 ...
 $ tBodyAccMeanY           : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 $ tBodyAccMeanZ           : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
 $ tBodyAccStdX            : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
 $ tBodyAccStdY            : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 $ tBodyAccStdZ            : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
 $ tGravityAccMeanX        : num  -0.249 0.832 0.943 0.935 0.932 ...
 $ tGravityAccMeanY        : num  0.706 0.204 -0.273 -0.282 -0.267 ...
 $ tGravityAccMeanZ        : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 $ tGravityAccStdX         : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
 $ tGravityAccStdY         : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
 $ tGravityAccStdZ         : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
 $ tBodyAccJerkMeanX       : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
 $ tBodyAccJerkMeanY       : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
 $ tBodyAccJerkMeanZ       : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
 $ tBodyAccJerkStdX        : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
 $ tBodyAccJerkStdY        : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
 $ tBodyAccJerkStdZ        : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
 $ tBodyGyroMeanX          : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
 $ tBodyGyroMeanY          : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
 $ tBodyGyroMeanZ          : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
 $ tBodyGyroStdX           : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
 $ tBodyGyroStdY           : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
 $ tBodyGyroStdZ           : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
 $ tBodyGyroJerkMeanX      : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
 $ tBodyGyroJerkMeanY      : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
 $ tBodyGyroJerkMeanZ      : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
 $ tBodyGyroJerkStdX       : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
 $ tBodyGyroJerkStdY       : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
 $ tBodyGyroJerkStdZ       : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
 $ tBodyAccMagMean         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tBodyAccMagStd          : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tGravityAccMagMean      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tGravityAccMagStd       : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tBodyAccJerkMagMean     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 $ tBodyAccJerkMagStd      : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 $ tBodyGyroMagMean        : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 $ tBodyGyroMagStd         : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
 $ tBodyGyroJerkMagMean    : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
 $ tBodyGyroJerkMagStd     : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
 $ fBodyAccMeanX           : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
 $ fBodyAccMeanY           : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
 $ fBodyAccMeanZ           : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
 $ fBodyAccStdX            : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
 $ fBodyAccStdY            : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
 $ fBodyAccStdZ            : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
 $ fBodyAccJerkMeanX       : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
 $ fBodyAccJerkMeanY       : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
 $ fBodyAccJerkMeanZ       : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
 $ fBodyAccJerkStdX        : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
 $ fBodyAccJerkStdY        : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
 $ fBodyAccJerkStdZ        : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
 $ fBodyGyroMeanX          : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
 $ fBodyGyroMeanY          : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
 $ fBodyGyroMeanZ          : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
 $ fBodyGyroStdX           : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
 $ fBodyGyroStdY           : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
 $ fBodyGyroStdZ           : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
 $ fBodyAccMagMean         : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 $ fBodyAccMagStd          : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
 $ fBodyBodyAccJerkMagMean : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 $ fBodyBodyAccJerkMagStd  : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
 $ fBodyBodyGyroMagMean    : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
 $ fBodyBodyGyroMagStd     : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
 $ fBodyBodyGyroJerkMagMean: num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
 $ fBodyBodyGyroJerkMagStd : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
```


Save to file
------------

Save data table objects to a tab-delimited text file called `tidy_data_with_means.txt`.


```r
f <- file.path(path, "tidy_data_with_means.txt")
write.table(result, f, quote = FALSE, sep = "\t", row.names = FALSE)
```
