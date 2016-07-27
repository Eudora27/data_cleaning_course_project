# Data Cleaning Course Project
Mentor Graded Assignment: Getting and Cleaning Data Course Project

## Descriptions:

This is the course project for the Getting and Cleaning Data Coursera course.
This repo contain an R script `run_analysis.R` which cleans the Samsung data and generate two clean files (`tidy.txt` and `tidy_mean.txt`).
Please note the raw data is not included in this repo. 
The R script does the following:

1. Read data from working directory (need to be downloaded and place in the working directory)
2. Subset dataset and clean variable names so the data only contain mean and std of each measurement 
3. Loads the activity and subject data for each dataset, and merges those
   columns with the dataset
4. Merges train and test datasets
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Writes the two cleaned dataset to txt files

[Here] are the data for the project.

[Here]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Codebook (tidy.txt)

### Dependent Variable

* `activity`

### Identifiers

* `train`: 1 - training set; 0 - testing set
* `subject`: Subject ids

### Features

* `tBodyAcc-mean()-X`
* `tBodyAcc-mean()-Y`
* `tBodyAcc-mean()-Z`
* `tGravityAcc-mean()-X`
* `tGravityAcc-mean()-Y`
* `tGravityAcc-mean()-Z`
* `tBodyAccJerk-mean()-X`
* `tBodyAccJerk-mean()-Y`
* `tBodyAccJerk-mean()-Z`
* `tBodyGyro-mean()-X`
* `tBodyGyro-mean()-Y`
* `tBodyGyro-mean()-Z`
* `tBodyGyroJerk-mean()-X`
* `tBodyGyroJerk-mean()-Y`
* `tBodyGyroJerk-mean()-Z`
* `tBodyAccMag-mean()`
* `tGravityAccMag-mean()`
* `tBodyAccJerkMag-mean()`
* `tBodyGyroMag-mean()`
* `tBodyGyroJerkMag-mean()`
* `fBodyAcc-mean()-X`
* `fBodyAcc-mean()-Y`
* `fBodyAcc-mean()-Z`
* `fBodyAcc-meanFreq()-X`
* `fBodyAcc-meanFreq()-Y`
* `fBodyAcc-meanFreq()-Z`
* `fBodyAccJerk-mean()-X`
* `fBodyAccJerk-mean()-Y`
* `fBodyAccJerk-mean()-Z`
* `fBodyAccJerk-meanFreq()-X`
* `fBodyAccJerk-meanFreq()-Y`
* `fBodyAccJerk-meanFreq()-Z`
* `fBodyGyro-mean()-X`
* `fBodyGyro-mean()-Y`
* `fBodyGyro-mean()-Z`
* `fBodyGyro-meanFreq()-X`
* `fBodyGyro-meanFreq()-Y`
* `fBodyGyro-meanFreq()-Z`
* `fBodyAccMag-mean()`
* `fBodyAccMag-meanFreq()`
* `fBodyBodyAccJerkMag-mean()`
* `fBodyBodyAccJerkMag-meanFreq()`
* `fBodyBodyGyroMag-mean()`
* `fBodyBodyGyroMag-meanFreq()`
* `fBodyBodyGyroJerkMag-mean()`
* `fBodyBodyGyroJerkMag-meanFreq()`
* `tBodyAcc-std()-X`
* `tBodyAcc-std()-Y`
* `tBodyAcc-std()-Z`
* `tGravityAcc-std()-X`
* `tGravityAcc-std()-Y`
* `tGravityAcc-std()-Z`
* `tBodyAccJerk-std()-X`
* `tBodyAccJerk-std()-Y`
* `tBodyAccJerk-std()-Z`
* `tBodyGyro-std()-X`
* `tBodyGyro-std()-Y`
* `tBodyGyro-std()-Z`
* `tBodyGyroJerk-std()-X`
* `tBodyGyroJerk-std()-Y`
* `tBodyGyroJerk-std()-Z`
* `tBodyAccMag-std()`
* `tGravityAccMag-std()`
* `tBodyAccJerkMag-std()`
* `tBodyGyroMag-std()`
* `tBodyGyroJerkMag-std()`
* `fBodyAcc-std()-X`
* `fBodyAcc-std()-Y`
* `fBodyAcc-std()-Z`
* `fBodyAccJerk-std()-X`
* `fBodyAccJerk-std()-Y`
* `fBodyAccJerk-std()-Z`
* `fBodyGyro-std()-X`
* `fBodyGyro-std()-Y`
* `fBodyGyro-std()-Z`
* `fBodyAccMag-std()`
* `fBodyBodyAccJerkMag-std()`
* `fBodyBodyGyroMag-std()`
* `fBodyBodyGyroJerkMag-std()`

## Codebook (tidy_mean.txt)

### Dependent Variable

* `activity`

### Identifiers

* `subject`: Subject ids


### Features (Averages at subject-activity level)

* `tBodyAcc-mean()-X-Avg`
* `tBodyAcc-mean()-Y-Avg`
* `tBodyAcc-mean()-Z-Avg`
* `tGravityAcc-mean()-X-Avg`
* `tGravityAcc-mean()-Y-Avg`
* `tGravityAcc-mean()-Z-Avg`
* `tBodyAccJerk-mean()-X-Avg`
* `tBodyAccJerk-mean()-Y-Avg`
* `tBodyAccJerk-mean()-Z-Avg`
* `tBodyGyro-mean()-X-Avg`
* `tBodyGyro-mean()-Y-Avg`
* `tBodyGyro-mean()-Z-Avg`
* `tBodyGyroJerk-mean()-X-Avg`
* `tBodyGyroJerk-mean()-Y-Avg`
* `tBodyGyroJerk-mean()-Z-Avg`
* `tBodyAccMag-mean()-Avg`
* `tGravityAccMag-mean()-Avg`
* `tBodyAccJerkMag-mean()-Avg`
* `tBodyGyroMag-mean()-Avg`
* `tBodyGyroJerkMag-mean()-Avg`
* `fBodyAcc-mean()-X-Avg`
* `fBodyAcc-mean()-Y-Avg`
* `fBodyAcc-mean()-Z-Avg`
* `fBodyAcc-meanFreq()-X-Avg`
* `fBodyAcc-meanFreq()-Y-Avg`
* `fBodyAcc-meanFreq()-Z-Avg`
* `fBodyAccJerk-mean()-X-Avg`
* `fBodyAccJerk-mean()-Y-Avg`
* `fBodyAccJerk-mean()-Z-Avg`
* `fBodyAccJerk-meanFreq()-X-Avg`
* `fBodyAccJerk-meanFreq()-Y-Avg`
* `fBodyAccJerk-meanFreq()-Z-Avg`
* `fBodyGyro-mean()-X-Avg`
* `fBodyGyro-mean()-Y-Avg`
* `fBodyGyro-mean()-Z-Avg`
* `fBodyGyro-meanFreq()-X-Avg`
* `fBodyGyro-meanFreq()-Y-Avg`
* `fBodyGyro-meanFreq()-Z-Avg`
* `fBodyAccMag-mean()-Avg`
* `fBodyAccMag-meanFreq()-Avg`
* `fBodyBodyAccJerkMag-mean()-Avg`
* `fBodyBodyAccJerkMag-meanFreq()-Avg`
* `fBodyBodyGyroMag-mean()-Avg`
* `fBodyBodyGyroMag-meanFreq()-Avg`
* `fBodyBodyGyroJerkMag-mean()-Avg`
* `fBodyBodyGyroJerkMag-meanFreq()-Avg`
* `tBodyAcc-std()-X-Avg`
* `tBodyAcc-std()-Y-Avg`
* `tBodyAcc-std()-Z-Avg`
* `tGravityAcc-std()-X-Avg`
* `tGravityAcc-std()-Y-Avg`
* `tGravityAcc-std()-Z-Avg`
* `tBodyAccJerk-std()-X-Avg`
* `tBodyAccJerk-std()-Y-Avg`
* `tBodyAccJerk-std()-Z-Avg`
* `tBodyGyro-std()-X-Avg`
* `tBodyGyro-std()-Y-Avg`
* `tBodyGyro-std()-Z-Avg`
* `tBodyGyroJerk-std()-X-Avg`
* `tBodyGyroJerk-std()-Y-Avg`
* `tBodyGyroJerk-std()-Z-Avg`
* `tBodyAccMag-std()-Avg`
* `tGravityAccMag-std()-Avg`
* `tBodyAccJerkMag-std()-Avg`
* `tBodyGyroMag-std()-Avg`
* `tBodyGyroJerkMag-std()-Avg`
* `fBodyAcc-std()-X-Avg`
* `fBodyAcc-std()-Y-Avg`
* `fBodyAcc-std()-Z-Avg`
* `fBodyAccJerk-std()-X-Avg`
* `fBodyAccJerk-std()-Y-Avg`
* `fBodyAccJerk-std()-Z-Avg`
* `fBodyGyro-std()-X-Avg`
* `fBodyGyro-std()-Y-Avg`
* `fBodyGyro-std()-Z-Avg`
* `fBodyAccMag-std()-Avg`
* `fBodyBodyAccJerkMag-std()-Avg`
* `fBodyBodyGyroMag-std()-Avg`
* `fBodyBodyGyroJerkMag-std()-Avg`