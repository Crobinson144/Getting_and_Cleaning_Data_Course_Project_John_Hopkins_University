# Code Book

`run_analysis.R` writes `tidy_data.txt`: one row per subject and activity (30 subjects × 6 activities = 180 rows) and 68 columns.

## Source data
[Human Activity Recognition Using Smartphones](https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones) (UCI Machine Learning Repository), recorded with a waist-mounted Samsung Galaxy S II. The course copy of the dataset is downloaded by the script if it is not already present.

## Transformations
1. Training and test sets are stacked (7,352 + 2,947 = 10,299 observations).
2. Subject IDs and activity codes are attached to the measurements.
3. Only the 66 features whose names contain `mean()` or `std()` are kept. `meanFreq()` and the `angle(...)` variables are excluded.
4. Activity codes 1–6 are replaced by their labels.
5. Variable names are expanded: `t` → `Time`, `f` → `Frequency`, `Acc` → `Accelerometer`, `Gyro` → `Gyroscope`, `Mag` → `Magnitude`, `BodyBody` → `Body`, `-mean()` → `Mean`, `-std()` → `STD`, and hyphens are removed.
6. Each variable is averaged for every subject–activity pair.

## Units
The original features are normalized and bounded within [-1, 1], so every measurement column is unitless.

## Variables
| Column | Original feature | Description |
|---|---|---|
| `Subject` | subject_train/test.txt | Volunteer ID, 1–30 |
| `Activity` | y_train/test.txt | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
| `TimeBodyAccelerometerMeanX` | `tBodyAcc-mean()-X` | Average of the mean of `tBodyAcc` along the X axis, time domain |
| `TimeBodyAccelerometerMeanY` | `tBodyAcc-mean()-Y` | Average of the mean of `tBodyAcc` along the Y axis, time domain |
| `TimeBodyAccelerometerMeanZ` | `tBodyAcc-mean()-Z` | Average of the mean of `tBodyAcc` along the Z axis, time domain |
| `TimeBodyAccelerometerSTDX` | `tBodyAcc-std()-X` | Average of the standard deviation of `tBodyAcc` along the X axis, time domain |
| `TimeBodyAccelerometerSTDY` | `tBodyAcc-std()-Y` | Average of the standard deviation of `tBodyAcc` along the Y axis, time domain |
| `TimeBodyAccelerometerSTDZ` | `tBodyAcc-std()-Z` | Average of the standard deviation of `tBodyAcc` along the Z axis, time domain |
| `TimeGravityAccelerometerMeanX` | `tGravityAcc-mean()-X` | Average of the mean of `tGravityAcc` along the X axis, time domain |
| `TimeGravityAccelerometerMeanY` | `tGravityAcc-mean()-Y` | Average of the mean of `tGravityAcc` along the Y axis, time domain |
| `TimeGravityAccelerometerMeanZ` | `tGravityAcc-mean()-Z` | Average of the mean of `tGravityAcc` along the Z axis, time domain |
| `TimeGravityAccelerometerSTDX` | `tGravityAcc-std()-X` | Average of the standard deviation of `tGravityAcc` along the X axis, time domain |
| `TimeGravityAccelerometerSTDY` | `tGravityAcc-std()-Y` | Average of the standard deviation of `tGravityAcc` along the Y axis, time domain |
| `TimeGravityAccelerometerSTDZ` | `tGravityAcc-std()-Z` | Average of the standard deviation of `tGravityAcc` along the Z axis, time domain |
| `TimeBodyAccelerometerJerkMeanX` | `tBodyAccJerk-mean()-X` | Average of the mean of `tBodyAccJerk` along the X axis, time domain |
| `TimeBodyAccelerometerJerkMeanY` | `tBodyAccJerk-mean()-Y` | Average of the mean of `tBodyAccJerk` along the Y axis, time domain |
| `TimeBodyAccelerometerJerkMeanZ` | `tBodyAccJerk-mean()-Z` | Average of the mean of `tBodyAccJerk` along the Z axis, time domain |
| `TimeBodyAccelerometerJerkSTDX` | `tBodyAccJerk-std()-X` | Average of the standard deviation of `tBodyAccJerk` along the X axis, time domain |
| `TimeBodyAccelerometerJerkSTDY` | `tBodyAccJerk-std()-Y` | Average of the standard deviation of `tBodyAccJerk` along the Y axis, time domain |
| `TimeBodyAccelerometerJerkSTDZ` | `tBodyAccJerk-std()-Z` | Average of the standard deviation of `tBodyAccJerk` along the Z axis, time domain |
| `TimeBodyGyroscopeMeanX` | `tBodyGyro-mean()-X` | Average of the mean of `tBodyGyro` along the X axis, time domain |
| `TimeBodyGyroscopeMeanY` | `tBodyGyro-mean()-Y` | Average of the mean of `tBodyGyro` along the Y axis, time domain |
| `TimeBodyGyroscopeMeanZ` | `tBodyGyro-mean()-Z` | Average of the mean of `tBodyGyro` along the Z axis, time domain |
| `TimeBodyGyroscopeSTDX` | `tBodyGyro-std()-X` | Average of the standard deviation of `tBodyGyro` along the X axis, time domain |
| `TimeBodyGyroscopeSTDY` | `tBodyGyro-std()-Y` | Average of the standard deviation of `tBodyGyro` along the Y axis, time domain |
| `TimeBodyGyroscopeSTDZ` | `tBodyGyro-std()-Z` | Average of the standard deviation of `tBodyGyro` along the Z axis, time domain |
| `TimeBodyGyroscopeJerkMeanX` | `tBodyGyroJerk-mean()-X` | Average of the mean of `tBodyGyroJerk` along the X axis, time domain |
| `TimeBodyGyroscopeJerkMeanY` | `tBodyGyroJerk-mean()-Y` | Average of the mean of `tBodyGyroJerk` along the Y axis, time domain |
| `TimeBodyGyroscopeJerkMeanZ` | `tBodyGyroJerk-mean()-Z` | Average of the mean of `tBodyGyroJerk` along the Z axis, time domain |
| `TimeBodyGyroscopeJerkSTDX` | `tBodyGyroJerk-std()-X` | Average of the standard deviation of `tBodyGyroJerk` along the X axis, time domain |
| `TimeBodyGyroscopeJerkSTDY` | `tBodyGyroJerk-std()-Y` | Average of the standard deviation of `tBodyGyroJerk` along the Y axis, time domain |
| `TimeBodyGyroscopeJerkSTDZ` | `tBodyGyroJerk-std()-Z` | Average of the standard deviation of `tBodyGyroJerk` along the Z axis, time domain |
| `TimeBodyAccelerometerMagnitudeMean` | `tBodyAccMag-mean()` | Average of the mean of `tBodyAccMag`, time domain |
| `TimeBodyAccelerometerMagnitudeSTD` | `tBodyAccMag-std()` | Average of the standard deviation of `tBodyAccMag`, time domain |
| `TimeGravityAccelerometerMagnitudeMean` | `tGravityAccMag-mean()` | Average of the mean of `tGravityAccMag`, time domain |
| `TimeGravityAccelerometerMagnitudeSTD` | `tGravityAccMag-std()` | Average of the standard deviation of `tGravityAccMag`, time domain |
| `TimeBodyAccelerometerJerkMagnitudeMean` | `tBodyAccJerkMag-mean()` | Average of the mean of `tBodyAccJerkMag`, time domain |
| `TimeBodyAccelerometerJerkMagnitudeSTD` | `tBodyAccJerkMag-std()` | Average of the standard deviation of `tBodyAccJerkMag`, time domain |
| `TimeBodyGyroscopeMagnitudeMean` | `tBodyGyroMag-mean()` | Average of the mean of `tBodyGyroMag`, time domain |
| `TimeBodyGyroscopeMagnitudeSTD` | `tBodyGyroMag-std()` | Average of the standard deviation of `tBodyGyroMag`, time domain |
| `TimeBodyGyroscopeJerkMagnitudeMean` | `tBodyGyroJerkMag-mean()` | Average of the mean of `tBodyGyroJerkMag`, time domain |
| `TimeBodyGyroscopeJerkMagnitudeSTD` | `tBodyGyroJerkMag-std()` | Average of the standard deviation of `tBodyGyroJerkMag`, time domain |
| `FrequencyBodyAccelerometerMeanX` | `fBodyAcc-mean()-X` | Average of the mean of `fBodyAcc` along the X axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerMeanY` | `fBodyAcc-mean()-Y` | Average of the mean of `fBodyAcc` along the Y axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerMeanZ` | `fBodyAcc-mean()-Z` | Average of the mean of `fBodyAcc` along the Z axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerSTDX` | `fBodyAcc-std()-X` | Average of the standard deviation of `fBodyAcc` along the X axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerSTDY` | `fBodyAcc-std()-Y` | Average of the standard deviation of `fBodyAcc` along the Y axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerSTDZ` | `fBodyAcc-std()-Z` | Average of the standard deviation of `fBodyAcc` along the Z axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerJerkMeanX` | `fBodyAccJerk-mean()-X` | Average of the mean of `fBodyAccJerk` along the X axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerJerkMeanY` | `fBodyAccJerk-mean()-Y` | Average of the mean of `fBodyAccJerk` along the Y axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerJerkMeanZ` | `fBodyAccJerk-mean()-Z` | Average of the mean of `fBodyAccJerk` along the Z axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerJerkSTDX` | `fBodyAccJerk-std()-X` | Average of the standard deviation of `fBodyAccJerk` along the X axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerJerkSTDY` | `fBodyAccJerk-std()-Y` | Average of the standard deviation of `fBodyAccJerk` along the Y axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerJerkSTDZ` | `fBodyAccJerk-std()-Z` | Average of the standard deviation of `fBodyAccJerk` along the Z axis, frequency domain (FFT) |
| `FrequencyBodyGyroscopeMeanX` | `fBodyGyro-mean()-X` | Average of the mean of `fBodyGyro` along the X axis, frequency domain (FFT) |
| `FrequencyBodyGyroscopeMeanY` | `fBodyGyro-mean()-Y` | Average of the mean of `fBodyGyro` along the Y axis, frequency domain (FFT) |
| `FrequencyBodyGyroscopeMeanZ` | `fBodyGyro-mean()-Z` | Average of the mean of `fBodyGyro` along the Z axis, frequency domain (FFT) |
| `FrequencyBodyGyroscopeSTDX` | `fBodyGyro-std()-X` | Average of the standard deviation of `fBodyGyro` along the X axis, frequency domain (FFT) |
| `FrequencyBodyGyroscopeSTDY` | `fBodyGyro-std()-Y` | Average of the standard deviation of `fBodyGyro` along the Y axis, frequency domain (FFT) |
| `FrequencyBodyGyroscopeSTDZ` | `fBodyGyro-std()-Z` | Average of the standard deviation of `fBodyGyro` along the Z axis, frequency domain (FFT) |
| `FrequencyBodyAccelerometerMagnitudeMean` | `fBodyAccMag-mean()` | Average of the mean of `fBodyAccMag`, frequency domain (FFT) |
| `FrequencyBodyAccelerometerMagnitudeSTD` | `fBodyAccMag-std()` | Average of the standard deviation of `fBodyAccMag`, frequency domain (FFT) |
| `FrequencyBodyAccelerometerJerkMagnitudeMean` | `fBodyBodyAccJerkMag-mean()` | Average of the mean of `fBodyBodyAccJerkMag`, frequency domain (FFT) |
| `FrequencyBodyAccelerometerJerkMagnitudeSTD` | `fBodyBodyAccJerkMag-std()` | Average of the standard deviation of `fBodyBodyAccJerkMag`, frequency domain (FFT) |
| `FrequencyBodyGyroscopeMagnitudeMean` | `fBodyBodyGyroMag-mean()` | Average of the mean of `fBodyBodyGyroMag`, frequency domain (FFT) |
| `FrequencyBodyGyroscopeMagnitudeSTD` | `fBodyBodyGyroMag-std()` | Average of the standard deviation of `fBodyBodyGyroMag`, frequency domain (FFT) |
| `FrequencyBodyGyroscopeJerkMagnitudeMean` | `fBodyBodyGyroJerkMag-mean()` | Average of the mean of `fBodyBodyGyroJerkMag`, frequency domain (FFT) |
| `FrequencyBodyGyroscopeJerkMagnitudeSTD` | `fBodyBodyGyroJerkMag-std()` | Average of the standard deviation of `fBodyBodyGyroJerkMag`, frequency domain (FFT) |
