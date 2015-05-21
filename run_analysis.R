library(dplyr)
library(data.table)

##Merges the training and the test sets to create one data set.
#read in features data
features <- read.table(file = "./features.txt", sep="", header = FALSE)

#read in test data
test_data <- read.table(file = "./test/X_test.txt", sep = "", header = FALSE)
test_label <- read.table(file = "./test/y_test.txt", sep = "", header = FALSE) #activity label
test_subject <- read.table(file = "./test/subject_test.txt", sep = "", header = FALSE)

#merge test datasets
test <- data.frame(test_subject, test_label, test_data)

#read in training data
train_data <- read.table(file = "./train/X_train.txt", sep = "", header = FALSE)
train_label <- read.table(file = "./train/y_train.txt", sep = "", header = FALSE) #activity label
train_subject <- read.table(file = "./train/subject_train.txt", sep = "", header = FALSE)

#merge training datasets
train <- data.frame(train_subject, train_label, train_data) 

#combine test and training data
complete_data <- rbind(test, train)

#label complete dataset
feature_names <- as.vector(features$V2)
names(complete_data) <- c("Subject", "ActivityLabel", feature_names)
valid_column_names <- make.names(names=names(complete_data), unique=TRUE, allow_ = TRUE)
names(complete_data) <- valid_column_names

#clean up environment
rm("features", "test_data", "test_label", "test_subject", "test", "train_data", "train_label", "train_subject", "train", "feature_names", "valid_column_names")

##Extracts only the measurements on the mean and standard deviation for each measurement. 
tidy_data <- select(complete_data, Subject, ActivityLabel, contains("mean"), contains("std"),-contains("freq"), -contains("angle"))

##Uses descriptive activity names to name the activities in the data set.
#read the activity labels
act_lab <- read.table("./activity_labels.txt", sep="", header=FALSE)

#replace the activity codes with the activity lables
tidy_data$ActivityLabel <- as.character(act_lab[match(tidy_data$ActivityLabel, act_lab$V1), 'V2'])

##Appropriately labels the data set with descriptive variable names. 
setnames(tidy_data, colnames(tidy_data), gsub("[()-.]", "", colnames(tidy_data))) #get rid of punctuation
setnames(tidy_data, colnames(tidy_data), gsub("BodyBody", "Body", colnames(tidy_data))) #reduce BodyBody to Body
setnames(tidy_data, colnames(tidy_data), gsub("std", "Std", colnames(tidy_data))) #capitalize Std for consistency
setnames(tidy_data, colnames(tidy_data), gsub("mean", "Mean", colnames(tidy_data))) #capitalize Mean for consistency

##From the data set in step 4, creates a second, independent tidy data set 
##with the average of each variable for each activity and each subject.
tidy_summary <- tidy_data %>%
    group_by(ActivityLabel, Subject) %>%
    summarise_each(funs(mean))

##save the new tidy datasets as .txt
write.table(tidy_data, file = "tidyData.txt", row.names = FALSE)
write.table(tidy_summary, file = "tidySummary.txt", row.names = FALSE)
