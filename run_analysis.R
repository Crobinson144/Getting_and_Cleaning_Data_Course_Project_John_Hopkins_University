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
