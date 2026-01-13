############################################
# Getting and Cleaning Data Course Project
# Johns Hopkins University - Coursera
#
# This script cleans and prepares the
# UCI Human Activity Recognition dataset
# into a tidy data set for analysis.
############################################

library(dplyr)

# Reads in the feature names and activity labels
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

# Reads in the training data files
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Reads in the test data files
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Combines the training and test data together
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subjects <- rbind(subject_train, subject_test)

# Adds column names so the data is easier to understand
colnames(X) <- features$V2
colnames(y) <- "Activity"
colnames(subjects) <- "Subject"

# Puts everything into one data frame
data <- cbind(subjects, y, X)

# Keeps only the measurements related to mean and standard deviation
mean_std_cols <- grep("mean\\(\\)|std\\(\\)", colnames(data))
data <- data[, c(1, 2, mean_std_cols)]
