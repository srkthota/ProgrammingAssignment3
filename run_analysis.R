# load the library
library(dplyr)

# Downloading Assignment data
if(!file.exists("./ProgrammingAssignment3")){dir.create("./ProgrammingAssignment3")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./ProgrammingAssignment3/Dataset.zip")

# Unzip the dataSet
unzip(zipfile="./ProgrammingAssignment3/Dataset.zip",exdir="./ProgrammingAssignment3")

files<-list.files("./ProgrammingAssignment3/",recursive=TRUE)
files

### Steps in run_analysis.R

# Read activities and features
features <- read.table("./ProgrammingAssignment3/UCI HAR Dataset/features.txt",col.names = c("index", "featureNames"))
activityLabels <- read.table("./ProgrammingAssignment3/UCI HAR Dataset/activity_labels.txt",col.names = c("activityId", "activityName"))

# Read train tables
features_train <- read.table("./ProgrammingAssignment3/UCI HAR Dataset/train/X_train.txt",header = FALSE)
activity_train <- read.table("./ProgrammingAssignment3/UCI HAR Dataset/train/y_train.txt", col.names = c("Activity"))
subject_train <- read.table("./ProgrammingAssignment3/UCI HAR Dataset/train/subject_train.txt", col.names = c("SubjectId"))

# Read test tables
features_test <- read.table("./ProgrammingAssignment3/UCI HAR Dataset/test/X_test.txt",header = FALSE)
activity_test <- read.table("./ProgrammingAssignment3/UCI HAR Dataset/test/y_test.txt", col.names = c("Activity"))
subject_test <- read.table("./ProgrammingAssignment3/UCI HAR Dataset/test/subject_test.txt", col.names = c("SubjectId"))


# Extracts only the index of the measurements on the mean and standard deviation for each measurement 
featuresNumRequired <- grep("(mean|std|meanFreq)\\(\\)", features$featureNames)



# Merge the training and the test sets to create one data set
MergeData <- rbind(cbind(subject_train, activity_train, features_train),
                   cbind(subject_test,  activity_test,  features_test))[, c(1,2,featuresNumRequired+2)]


# Extracts only the measurements on the mean and standard deviation for each measurement 
selectedFeatures <- features[featuresNumRequired,"featureNames"]
selectedFeatures <- gsub('[()]', '', selectedFeatures)
selectedFeatures

# Appropriately labels the data set with descriptive variable names
colnames(MergeData)<-c("SubjectId","Activity",selectedFeatures)
MergeData[["Activity"]] <- factor(MergeData[["Activity"]], levels = activityLabels[["activityId"]], labels = activityLabels[["activityName"]])


# Creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidyData <-MergeData %>% group_by(SubjectId, Activity) %>% summarise_all(list(mean = mean))
write.table(tidyData, "./ProgrammingAssignment3/tidyData.txt", row.name=FALSE)
