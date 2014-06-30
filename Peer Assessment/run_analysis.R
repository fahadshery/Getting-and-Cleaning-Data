# Step1. Merges the training and the test sets to create one data set.

# If require help please consult to the Lecture "Reading Local Files" from Week 1.

# Set the path.

# Prepare the data directory
if (!file.exists("Data")) {
        dir.create("Data")
}

# First and formost, download data:

# Download the data file for the assignment, after checking for its existence
FileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("./Data/UCI_HAR_Dataset.zip")) {
        download.file(FileURL, destfile = "./Data/UCI_HAR_Dataset.zip", mode="wb")
}

# Unzip the file
if (!file.exists("./Data/UCI HAR Dataset")) {
        unzip("./Data/UCI_HAR_Dataset.zip", exdir = "./Data")
}


# The archive put the files in a folder named `UCI HAR Dataset`. Set this folder
# as the input path. Check the List of extracted files.

```{r}
path <- paste0(getwd(),"/Data")
path <- file.path(path, "UCI HAR Dataset")
list.files(path, recursive=TRUE)
```

#Read the files
#--------------

#Because these are not "," separated files, I will use the default version of read.table()
#However this method is a bit slow
Training_set_Data <- read.table("./Data/UCI HAR Dataset/train/X_train.txt")

#This data has 7352 obs. and 561 columns, we can also check it by:
dim(Training_set_Data) 

#check the first 6 rows of data
head(Training_set_Data)

#This data is without headers so R automatically assigns them a name starting 
#from V1 to V561 (depending on number of columns in the dataset)

#read in the Training labels
Training_set_Label <- read.table("./Data/UCI HAR Dataset/train/y_train.txt")
table(Training_set_Label)
head(Training_set_Label)

#read in the subject
Training_set_subject <- read.table("./Data/UCI HAR Dataset/train/subject_train.txt")
table(Training_set_subject)
head(Training_set_subject)

#Now read in the Test Data
Test_set_Data <- read.table("./Data/UCI HAR Dataset/test/X_test.txt")
dim(Test_set_Data) 

#Test set data contains 2947 obs. with 561 columns 

#now read in the testing labels
Test_set_Label <- read.table("./Data/UCI HAR Dataset/test/y_test.txt")
table(Test_set_Label)
# Labels look similar as well

#now read in the testing subject
Test_set_subject <- read.table("./Data/UCI HAR Dataset/test/subject_test.txt")
table(Test_set_subject)
table(Training_set_subject)

#Merge data
Data_merge = rbind(Training_set_Data, Test_set_Data)

#Merge Label
Label_merge = rbind(Training_set_Label, Test_set_Label)
table(Label_merge)

#Label represents the activity of the user so change the column name
colnames(Label_merge) <- "Activity"
head(Label_merge)

#Merge subject
subject_merge = rbind(Training_set_subject,Test_set_subject)
colnames(subject_merge) <- "subject"
head(subject_merge)

#merge them all into one dataframe
CompleteData = cbind(Label_merge, subject_merge,Data_merge)
str(CompleteData)
head(CompleteData)

# Step2. Extracts only the measurements on the mean and standard
# deviation for each measurement. 

#Extract only the mean and standard deviation
#--------------------------------------------
        
#Read the `features.txt` file. This will tell us which variables in `CompleteData` are measurements for
#the mean and standard deviation.

features <- read.table("./Data/UCI HAR Dataset/features.txt")
head(features)
colnames(features) <- c("Column Number", "Column Type")

#Because in the original Data we have 561 columns. Features.txt file explains each columns description
#we need to extract those columns only which have means and standard deviation measurements

#now get the column numbers who contain the words "mean()" or "std()" using grep function. if we use
#\\, this means that treat it as a literal and not a metadata because \ have special meaning in R.

columnIndexForMeanStd = grep("mean\\(\\)|std\\(\\)",features[,"Column Type"])

#Note: if we do grep("mean()|std()",features[,2]), This will also select meanFreq() which we dont want

#select only those columns which match the columnIndexForMeanStd
# remove first two columns first i.e. activity and subject columns
copyCompleteData <- CompleteData[,c(-1,-2)]
str(copyCompleteData)

#create dataset for mean and std columns which match the columnIndexForMeanStd
MeanStdData <- copyCompleteData[,columnIndexForMeanStd]
str(MeanStdData)
head(MeanStdData)

#name the Data columns of Means and Stds
names(MeanStdData) <- gsub("\\(\\)", "", features[columnIndexForMeanStd, 2]) # remove "()"
names(MeanStdData) <- gsub("mean", "Mean", names(MeanStdData)) # capitalise M
names(MeanStdData) <- gsub("std", "Std", names(MeanStdData)) # capitalise S
names(MeanStdData) <- gsub("-", "", names(MeanStdData)) # remove "-" in column names 
str(MeanStdData)
str(CompleteData)

#Add in Activity and subject columns back in the dataset
MeanStdData$Activity <- CompleteData$Activity
MeanStdData$subject <- CompleteData$subject

str(MeanStdData)

# Uses descriptive activity names to name the activities in the data set

#Read `activity_labels.txt` file. This will be used to add descriptive names to the activities.

```{r}
activity_labels <- read.table("./Data/UCI HAR Dataset/activity_labels.txt")
str(activity_labels)
colnames(activity_labels) <- c("Activity Num", "Activity Name")
head(activity_labels)

#convert activity_labels to lower case and replace "_" with nothing
activity_labels[, "Activity Name"] <- tolower(gsub("_", "", activity_labels[, "Activity Name"]))

#Now using the activity number replace the labels
MeanStdData$Activity = activity_labels[MeanStdData$Activity, 2]

activity_labels
table(MeanStdData$Activity)
table(CompleteData$Activity)
str(MeanStdData)
```
# Appropriately labels the data set with descriptive variable names. 

#Data is now ready to be written

write.table(MeanStdData, "merged_clean_data.txt", row.names = FALSE)

# 5. Creates a 2nd, independent tidy data set with the average of each variable for 
#each activity and each subject.

install.packages("plyr")
library(plyr)

# Create a new data frame (tidy) containing the average of each variable for each activity and each subject

result <- ddply(MeanStdData,c('subject','Activity'),function(MeanStdData) mean=colMeans(MeanStdData[,1:66]))
str(result)

head(result)
write.table(result, "tidy_data_with_means.txt", row.names = FALSE) # write out the 2nd dataset
