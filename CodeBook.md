#Codebook

####Before running script:
Download zip file from here <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> and set folder as working directory.

####The script conducts the following tasks:

* Reads in training and test datasets, `X_test.txt` and `X_train.txt` as well as the activity labels `y_test.txt`, `y_train.txt`, the subjects `subject_test.txt`, `subject_train.txt`, and variable labels `features.txt`.
* Merges these datasets together.
* Extracts required variables: subject, activity label, and variables containing either *mean* or *std*.
* Processes extract to show name of activity labels. Examples - `STANDING`, `SITTING`.
* Simplifies variable label names by removing punctuation, transforms BodyBody to Body, capitalizes Std and Mean.
* Returns tidy data set `tidy_data.txt`.
* Creates second tidy data set showing the average of each variable for each activity and each subject and returns `tidy_summary.txt`.

####Information on how variables were obtained:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

####Variable names:

 Raw data set | Tidy data set
 -------------|--------------
 `subject` | `Subject`
 `label` | `ActivityLabel`
 `tBodyAcc-mean()-X` | `tBodyAccMeanX`
 `tBodyAcc-mean()-Y` | `tBodyAccMeanY`
 `tBodyAcc-mean()-Z` | `tBodyAccMeanZ`
 `tGravityAcc-mean()-X` | `tGravityAccMeanX`
 `tGravityAcc-mean()-Y` | `tGravityAccMeanY`
 `tGravityAcc-mean()-Z` | `tGravityAccMeanZ`
 `tBodyAccJerk-mean()-X` | `tBodyAccJerkMeanX`
 `tBodyAccJerk-mean()-Y` | `tBodyAccJerkMeanY`
 `tBodyAccJerk-mean()-Z` | `tBodyAccJerkMeanZ`
 `tBodyGyro-mean()-X` | `tBodyGyroMeanX`
 `tBodyGyro-mean()-Y` | `tBodyGyroMeanY`
 `tBodyGyro-mean()-Z` | `tBodyGyroMeanZ`
 `tBodyGyroJerk-mean()-X` | `tBodyGyroJerkMeanX`
 `tBodyGyroJerk-mean()-Y` | `tBodyGyroJerkMeanY`
 `tBodyGyroJerk-mean()-Z` | `tBodyGyroJerkMeanZ`
 `fBodyAcc-mean()-X` | `fBodyAccMeanX`
 `fBodyAcc-mean()-Y` | `fBodyAccMeanY`
 `fBodyAcc-mean()-Z` | `fBodyAccMeanZ`
 `fBodyAccJerk-mean()-X` | `fBodyAccJerkMeanX`
 `fBodyAccJerk-mean()-Y` | `fBodyAccJerkMeanY`
 `fBodyAccJerk-mean()-Z` | `fBodyAccJerkMeanZ`
 `fBodyGyro-mean()-X` | `fBodyGyroMeanX`
 `fBodyGyro-mean()-Y` | `fBodyGyroMeanY`
 `fBodyGyro-mean()-Z` | `fBodyGyroMeanZ`
 `fBodyAccMag-mean()` | `fBodyAccMagMean`
 `fBodyBodyAccJerkMag-mean()` | `fBodyAccJerkMagMean`
 `fBodyBodyGyroMag-mean()` | `fBodyGyroMagMean`
 `fBodyBodyGyroJerkMag-mean()` | `fBodyGyroJerkMagMean`
 `tBodyGyroJerkMag-mean()` | `tBodyGyroJerkMagMean`
 `tBodyAccMag-mean()` | `tBodyAccMagMean`
 `tGravityAccMag-mean()` | `tGravityAccMagMean`
 `tBodyAccJerkMag-mean()` | `tBodyAccJerkMagMean`
 `tBodyGyroMag-mean()` | `tBodyGyroMagMean`
 `tBodyGyroJerkMag-mean()` | `tBodyGyroJerkMagMean`
 `tBodyAcc-std()-X` | `tBodyAccStdX`
 `tBodyAcc-std()-Y` | `tBodyAccStdY`
 `tBodyAcc-std()-Z` | `tBodyAccStdZ`
 `tGravityAcc-std()-X` | `tGravityAccStdX`
 `tGravityAcc-std()-Y` | `tGravityAccStdY`
 `tGravityAcc-std()-Z` | `tGravityAccStdZ`
 `tBodyAccJerk-std()-X` | `tBodyAccJerkStdX`
 `tBodyAccJerk-std()-Y` | `tBodyAccJerkStdY`
 `tBodyAccJerk-std()-Z` | `tBodyAccJerkStdZ`
 `tBodyGyro-std()-X` | `tBodyGyroStdX`
 `tBodyGyro-std()-Y` | `tBodyGyroStdY`
 `tBodyGyro-std()-Z` | `tBodyGyroStdZ`
 `tBodyGyroJerk-std()-X` | `tBodyGyroJerkStdX`
 `tBodyGyroJerk-std()-Y` | `tBodyGyroJerkStdY`
 `tBodyGyroJerk-std()-Z` | `tBodyGyroJerkStdZ` 
 `tBodyAccMag-std()` | `tBodyAccMagStd`
 `tGravityAccMag-std()` | `tGravityAccMagStd`
 `tBodyAccJerkMag-std()` | `tBodyAccJerkMagStd`
 `tBodyGyroMag-std()` | `tBodyGyroMagStd`
 `tBodyGyroJerkMag-std()` | `tBodyGyroJerkMagStd`
 `fBodyAcc-std()-X` | `fBodyAccStdX`
 `fBodyAcc-std()-Y` | `fBodyAccStdY`
 `fBodyAcc-std()-Z` | `fBodyAccStdZ`
 `fBodyAccJerk-std()-X` | `fBodyAccJerkStdX`
 `fBodyAccJerk-std()-Y` | `fBodyAccJerkStdY`
 `fBodyAccJerk-std()-Z` | `fBodyAccJerkStdZ`
 `fBodyGyro-std()-X` | `fBodyGyroStdX`
 `fBodyGyro-std()-Y` | `fBodyGyroStdY`
 `fBodyGyro-std()-Z` | `fBodyGyroStdZ`
 `fBodyAccMag-std()` | `fBodyAccMagStd`
 `fBodyBodyAccJerkMag-std()` | `fBodyAccJerkMagStd`
 `fBodyBodyGyroMag-std()` | `fBodyGyroMagStd`
 `fBodyBodyGyroJerkMag-std()` | `fBodyGyroJerkMagStd`