# Getting and Cleaning Data
# Peer Review Assignment

Data can be obtained @[Data Repo](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Click to download")

### run the  script(run_analysis.R) to perform the following tasks

### Transformations or work performed to clean up the data

    * Read training and test dataset features.
    * Read activity Labels(variable names).
    * Read subject Id.
    * Merge the training and the test sets to create one data set.
    * Extracts only the measurements on the mean and standard deviation for each measurement.
    * Uses descriptive activity names to name the activities in the data set
    * Appropriately labels the data set with descriptive variable names.
    * creates a second, independent tidy data set with the average of variable for each activity and each subject.



### data set description

    * Tidy data contains 180 rows and 81 columns. Each row represents mean of each activity for each subjectId.


### Identifiers

    * SubjectId - subject ID
    * Activity - action performed when measurement is taken


### ActivityLabels

    * WALKING 
    * WALKING_UPSTAIRS 
    * WALKING_DOWNSTAIRS 
    * SITTING 
    * STANDING 
    * LAYING 

### variables kept in tinyData are estimated from these signals

    * mean() - Mean value
    * std() - Standard deviation

### variables kept in the tidy set

    *  tGravityAcc-std-Z
    *  tGravityAcc-std-Y
    *  tGravityAcc-std-X
    *  tGravityAcc-mean-Z
    *  tGravityAcc-mean-Y
    *  tGravityAcc-mean-X
    *  tGravityAccMag-std
    *  tGravityAccMag-mean
    *  tBodyGyro-std-Z
    *  tBodyGyro-std-Y
    *  tBodyGyro-std-X
    *  tBodyGyro-mean-Z
    *  tBodyGyro-mean-Y
    *  tBodyGyro-mean-X
    *  tBodyGyroMag-std
    *  tBodyGyroMag-mean
    *  tBodyGyroJerk-std-Z
    *  tBodyGyroJerk-std-Y
    *  tBodyGyroJerk-std-X
    *  tBodyGyroJerk-mean-Z
    *  tBodyGyroJerk-mean-Y
    *  tBodyGyroJerk-mean-X
    *  tBodyGyroJerkMag-std
    *  tBodyGyroJerkMag-mean
    *  tBodyAcc-std-Z
    *  tBodyAcc-std-Y
    *  tBodyAcc-std-X
    *  tBodyAcc-mean-Z
    *  tBodyAcc-mean-Y
    *  tBodyAcc-mean-X
    *  tBodyAccMag-std
    *  tBodyAccMag-mean
    *  tBodyAccJerk-std-Z
    *  tBodyAccJerk-std-Y
    *  tBodyAccJerk-std-X
    *  tBodyAccJerk-mean-Z
    *  tBodyAccJerk-mean-Y
    *  tBodyAccJerk-mean-X
    *  tBodyAccJerkMag-std
    *  tBodyAccJerkMag-mean
    *  fBodyGyro-std-Z
    *  fBodyGyro-std-Y
    *  fBodyGyro-std-X
    *  fBodyGyro-mean-Z
    *  fBodyGyro-mean-Y
    *  fBodyGyro-mean-X
    *  fBodyGyro-meanFreq-Z
    *  fBodyGyro-meanFreq-Y
    *  fBodyGyro-meanFreq-X
    *  fBodyBodyGyroMag-std
    *  fBodyBodyGyroMag-meanFreq
    *  fBodyBodyGyroMag-mean
    *  fBodyBodyGyroJerkMag-std
    *  fBodyBodyGyroJerkMag-meanFreq
    *  fBodyBodyGyroJerkMag-mean
    *  fBodyBodyAccJerkMag-std
    *  fBodyBodyAccJerkMag-meanFreq
    *  fBodyBodyAccJerkMag-mean
    *  fBodyAcc-std-Z
    *  fBodyAcc-std-Y
    *  fBodyAcc-std-X
    *  fBodyAcc-mean-Z
    *  fBodyAcc-mean-Y
    *  fBodyAcc-mean-X
    *  fBodyAcc-meanFreq-Z
    *  fBodyAcc-meanFreq-Y
    *  fBodyAcc-meanFreq-X
    *  fBodyAccMag-std
    *  fBodyAccMag-meanFreq
    *  fBodyAccMag-mean
    *  fBodyAccJerk-std-Z
    *  fBodyAccJerk-std-Y
    *  fBodyAccJerk-std-X
    *  fBodyAccJerk-mean-Z
    *  fBodyAccJerk-mean-Y
    *  fBodyAccJerk-mean-X
    *  fBodyAccJerk-meanFreq-Z
    *  fBodyAccJerk-meanFreq-Y
    *  fBodyAccJerk-meanFreq-X



### Loading 'tidyData' in R

    * tidyData <- read.table(file = "tidyData.txt",header = TRUE, check.names = FALSE, dec = ".") 

