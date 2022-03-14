library(dplyr)
library(plyr)
library(tidyr)
library(stringr)

#### 1. Merges the training and the test sets to create one data set. ####
# Loading the xtrain data 
xtrain <- read.table("data/train/X_train.txt")

# Loading the xtest data 
xtest <- read.table("data/test/X_test.txt")

# Loading the ytrain data 
ytrain <- read.table("data/train/Y_train.txt")

# Loading the ytest data 
ytest <- read.table("data/test/Y_test.txt")

subject_train <- read.table("data/train/subject_train.txt")

subject_test <- read.table("data/test/subject_test.txt")

ytrain["subject"] <- subject_train
ytest["subject"] <- subject_test

# Merging the x training and test data sets in to xall data set
xall <- rbind(xtrain, xtest)

# Merging the y training and test data sets in to yall data set
yall <- rbind(ytrain, ytest)

# need to change the column names for the cbind to work as yall and xall both
# have a V1 column name
names(yall) <- c("activityid", "subject")

# loading the features list to use as column headers for the x datasets
features <- read.table("data/features.txt")

# changing the dataframe column names to match the features
names(xall) <- features$V2

#combining all the data in to a single df
all <- cbind(xall, yall)

#### 2. Extracts only the measurements on the mean and standard deviation for each measurem ###@
# removing unneeded columns
# only keeping columns with "mean", "std" in them as well as "activityid", "subject"
allclean <- all[grep("mean[^F]|std|activityid|subject", colnames(all))]

# loading the activity labels
activity_labels <- read.table("data/activity_labels.txt")
names(activity_labels) <- c("activityid", "activity")

###@ 3. Uses descriptive activity names to name the activities in the data set ####
# adding the activity labels to the ytrain and ytest data sets
allclean <- merge(allclean, activity_labels, by.x = "activityid", by.y = "activityid")

#### 4. Appropriately labels the data set with descriptive variable names. ####
#clean up the column names
cleannames <- str_replace_all(colnames(allclean), "[()]", "")
cleannames <- str_replace_all(cleannames, "-", "_") %>% tolower

names(allclean) <- cleannames

#### 5. From the data set in step 4, creates a second, independent tidy data ####
#### set with the average of each variable for each activity and each subject. ####

averages <- group_by(allclean, activity, subject)

meandata <- summarize_each(averages, mean)

meandata
