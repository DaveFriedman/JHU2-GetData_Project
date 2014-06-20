## Codebook

#####This project takes data from the Human Activity Recognition Using Smartphones dataset, cleans, combines, and performs some summarization.

The Human Activity Recognition database was built from recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors. 30 volunteers between the ages of 19-48 performed 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) while wearing a smartphone with an embedded acceleromter and gyroscope. 3-axial liner acceleration and 3-axial angular velocity was recorded at a constant rate of50Hz. The dataset was randomly partitioned into two sets, where 30% ofthe volunteers were selected to generate the test data, and the other 70% generated training data.


* The data is available at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* and the full experiment is located at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### run_analyis.R creates two products:
* A dataframe that combines the Test and Train datasets, which includes 30 subjects, 6 activities per subjecct, multiple observations per activity and 561 features of those recorded observations, and
* a file, "tidy.csv", which contains for each subject's activities, the mean of observations for features related to the standard deviation and the mean.

##There are 68 features related to either the standard deviation or the mean. They are:

* tBodyAcc.mean...X
* tBodyAcc.mean...Y
* tBodyAcc.mean...Z
* tBodyAcc.std...X
* tBodyAcc.std...Y
* tBodyAcc.std...Z
* tGravityAcc.mean...X
* tGravityAcc.mean...Y
* tGravityAcc.mean...Z
* tGravityAcc.std...X
* tGravityAcc.std...Y
* tGravityAcc.std...Z
* tBodyAccJerk.mean...X
* tBodyAccJerk.mean...Y
* tBodyAccJerk.mean...Z
* tBodyAccJerk.std...X
* tBodyAccJerk.std...Y
* tBodyAccJerk.std...Z
* tBodyGyro.mean...X
* tBodyGyro.mean...Y
* tBodyGyro.mean...Z
* tBodyGyro.std...X
* tBodyGyro.std...Y
* tBodyGyro.std...Z
* tBodyGyroJerk.mean...X
* tBodyGyroJerk.mean...Y
* tBodyGyroJerk.mean...Z
* tBodyGyroJerk.std...X
* tBodyGyroJerk.std...Y
* tBodyGyroJerk.std...Z
* tBodyAccMag.mean
* tBodyAccMag.std
* tGravityAccMag.mean
* tGravityAccMag.std
* tBodyAccJerkMag.mean
* tBodyAccJerkMag.std
* tBodyGyroMag.mean
* tBodyGyroMag.std
* tBodyGyroJerkMag.mean
* tBodyGyroJerkMag.std
* fBodyAcc.mean...X
* fBodyAcc.mean...Y
* fBodyAcc.mean...Z
* fBodyAcc.std...X
* fBodyAcc.std...Y
* fBodyAcc.std...Z
* fBodyAccJerk.mean...X
* fBodyAccJerk.mean...Y
* fBodyAccJerk.mean...Z
* fBodyAccJerk.std...X
* fBodyAccJerk.std...Y
* fBodyAccJerk.std...Z
* fBodyGyro.mean...X
* fBodyGyro.mean...Y
* fBodyGyro.mean...Z
* fBodyGyro.std...X
* fBodyGyro.std...Y
* fBodyGyro.std...Z
* fBodyAccMag.mean
* fBodyAccMag.std
* fBodyBodyAccJerkMag.mean
* fBodyBodyAccJerkMag.std
* fBodyBodyGyroMag.mean
* fBodyBodyGyroMag.std
* fBodyBodyGyroJerkMag.mean
* fBodyBodyGyroJerkMag.std
