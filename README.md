# Getting_and_Cleaning_Data_Course_Project_John_Hopkins_University
This repository contains the complete solution for the Johns Hopkins University Getting and Cleaning Data course project on Coursera, demonstrating how to clean, transform, and summarize the UCI Human Activity Recognition dataset into a tidy dataset for analysis.

## Files
- `run_analysis.R`: the full pipeline, from raw files to `tidy_data.txt`.
- `CodeBook.md`: the variables, units and every transformation applied.

## How to run
1. Install the `dplyr` package.
2. Set the working directory to this folder and run `source("run_analysis.R")`.
3. The script downloads and unzips the dataset if the `UCI HAR Dataset` folder is missing, then writes `tidy_data.txt` (180 rows × 68 columns).

Read the output back with `read.table("tidy_data.txt", header = TRUE)`.
