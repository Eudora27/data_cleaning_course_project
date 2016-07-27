# This R script is associated with Mentor Graded Assignment: 
# Getting and Cleaning Data Course Project

#load packages and read data
library(plyr)
library(dplyr)
library(tidyr)

sc <- function(term,dframe,index=FALSE){
  # search column names of data frame for a string 
  # and return the columns
  
  n=names(dframe)
  if (index == TRUE){
    searchResult = grep(term,n)
  }else{
    searchResult = n[grep(term,n)]
  }
  return(searchResult)
}

features <- read.csv('UCI HAR Dataset/features.txt', header = F, sep = "", stringsAsFactors = F)
activity <- read.csv('UCI HAR Dataset/activity_labels.txt', header = F, sep = "", stringsAsFactors = F)

dfTrain <- read.csv('UCI HAR Dataset/train/X_train.txt', header = F, sep = "", stringsAsFactors = F)
dfTrainLabel <- read.csv('UCI HAR Dataset/train/y_train.txt', header = F, sep = "", stringsAsFactors = F)
dfTrainSubj <- read.csv('UCI HAR Dataset/train/subject_train.txt', header = F, sep = "", stringsAsFactors = F)

dfTest <- read.csv('UCI HAR Dataset/test/X_test.txt', header = F, sep = "", stringsAsFactors = F)
dfTestLabel <- read.csv('UCI HAR Dataset/test/y_test.txt', header = F, sep = "", stringsAsFactors = F)
dfTestSubj <- read.csv('UCI HAR Dataset/test/subject_test.txt', header = F, sep = "", stringsAsFactors = F)

# attach variable names to dfs
names(dfTrain) <- features$V2
names(dfTest) <- features$V2

# attach activity labels to dfs
dfTrainLabel$V1 <- dfTrainLabel$V1 %>% as.character %>% as.factor
levels(dfTrainLabel$V1) <- activity$V2

dfTestLabel$V1 <- dfTestLabel$V1 %>% as.character %>% as.factor
levels(dfTestLabel$V1) <- activity$V2

# combine activity col with features
dfTrain <- cbind(dfTrainLabel, dfTrain)
dfTest <- cbind(dfTestLabel, dfTest)
names(dfTrain)[names(dfTrain) == 'V1'] <- 'activity'
names(dfTest)[names(dfTest) == 'V1'] <- 'activity'

# combine subject col with dfs
dfTrain <- cbind(dfTrainSubj, dfTrain)
dfTest <- cbind(dfTestSubj, dfTest)
names(dfTrain)[names(dfTrain) == 'V1'] <- 'subject'
names(dfTest)[names(dfTest) == 'V1'] <- 'subject'

# combine test and train dfs
dfTrain$train = 1
dfTest$train = 0
df <- rbind(dfTrain, dfTest)

# subset cols
col_mean <- sc('mean', df)
col_std <- sc('std', df)
cols <- c('train', 'subject', 'activity', col_mean, col_std)
df <- df[, cols]

# average of each variables for each activity and each subject
dfMean <- df[, names(df) != 'train']  %>% 
  group_by(subject, activity) %>% 
  summarise_each(., funs(mean))

names(dfMean) <- c('subject', 'activity', paste0(col_mean, '-Avg'), paste0(col_std, '-Avg'))

# write cleaned data to csvs
write.table(df, 'tidy.txt', row.names = FALSE)
write.table(dfMean, 'tidy_mean.txt', row.names = FALSE)

