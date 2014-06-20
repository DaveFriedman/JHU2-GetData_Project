library("reshape2")
## Step 1:
## Merge the training and the test sets to create one data set.

## Features & Activities for labeling
features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

## For speed, first read 50 rows of X_test.txt and derive column classes
test.x.initial <- read.table("./UCI HAR Dataset/test/x_test.txt", nrows=50)
classes <- sapply(test.x.initial, class)

## Read x_test.txt, apply names from Features.txt to columns
test.x <- read.table("./UCI HAR Dataset/test/x_test.txt", colClasses = classes, col.names = features$V2)

## Read y_test.txt,apply name "activity" to column
test.y <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")

## Read subject_test.txt, apply name "subject" to column
test.subject <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

## Combine all data from Test group
## Column 1 is subject, column 2 is activity, columns 3-563 are Features
test <- cbind(test.subject, test.y)
test <- cbind(test, test.x)

## Repeat process for Train group
train.x.initial <- read.table("./UCI HAR Dataset/train/x_train.txt", nrows=50)
classes <- sapply(train.x.initial, class)
train.x <- read.table("./UCI HAR Dataset/train/x_train.txt", colClasses = classes, col.names = features$V2)
train.y <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")
train.subject <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
train <- cbind(train.subject, train.y)
train <- cbind(train, train.x)

## Combine Test and Train groups
complete <- rbind(test, train)


## Step 3 (before step 2!): 
## Use descriptive activity names to name the activities in the data set.

## Apply descriptive names to the numeric factors of Activities
complete$activity <- factor(complete$activity, levels = activities$V1, labels = activities$V2)


## Step 2:
## Extract only the measurements on the mean and standard deviation for each measurement

## Extract indicies for columns with "std()" and "mean()"
indicies <- grep("std\\(\\)|mean\\(\\)", features$V2)

## Shift right to account for $subject & $activity
indicies <- c(1,2, (indicies +2))

## Create dataframe of means & std devs
means.devs <- complete[indicies]


## Step 4:
## Appropriately label the data set with descriptive activity names

## This step was completed with the col.names parameter
## For test.x and train.x, col.names = features$V2
## For test.y and train.y, col.names = "activity"
## For test.subject and train.subject, col.names = "subject"


## Step 5:
## Create a second, independent tidy data set with the average of each variable for each activity and each subject

## Melt dataframe of means & std devs by subject & activity
means.devs.melt <- melt(means.devs, id.vars=c("subject", "activity"))

## Cast melted dataframe into 180 row, 68 column dataframe of activity means
## 1 row per each subect(30)-activity(6) pair.
## 1 column for each mean & std deviation feature (66), then a subject column and an activity column
subject.activity.means <- dcast(means.devs.melt, subject + activity ~ variable, mean)

## Create tidy data set to upload
write.csv(subject.activity.means, "tidy.txt")