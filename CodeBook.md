---
title: "CodeBook"
author: "Cristina"
date: "10/30/2020"
---

##Data
This data is collected from accelerometers, tracking subject's movements broken down into various elements such as velocity, accelaraton, jerk, etc...

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

##Variables

"Subject"                                                      "Activity"                                                    
"Time-BodyAccelerometer-Mean()-X"                              "Time-BodyAccelerometer-Mean()-Y"                             
"Time-BodyAccelerometer-Mean()-Z"                              "Time-BodyAccelerometer-StandardDeviation()-X"                
"Time-BodyAccelerometer-StandardDeviation()-Y"                 "Time-BodyAccelerometer-StandardDeviation()-Z"                
"Time-GravityAccelerometer-Mean()-X"                           "Time-GravityAccelerometer-Mean()-Y"                          
"Time-GravityAccelerometer-Mean()-Z"                           "Time-GravityAccelerometer-StandardDeviation()-X"             
"Time-GravityAccelerometer-StandardDeviation()-Y"              "Time-GravityAccelerometer-StandardDeviation()-Z"             
"Time-BodyAccelerometerJerk-Mean()-X"                          "Time-BodyAccelerometerJerk-Mean()-Y"                         
"Time-BodyAccelerometerJerk-Mean()-Z"                          "Time-BodyAccelerometerJerk-StandardDeviation()-X"            
"Time-BodyAccelerometerJerk-StandardDeviation()-Y"             "Time-BodyAccelerometerJerk-StandardDeviation()-Z"            
"Time-BodyGyroscope-Mean()-X"                                  "Time-BodyGyroscope-Mean()-Y"                                 
"Time-BodyGyroscope-Mean()-Z"                                  "Time-BodyGyroscope-StandardDeviation()-X"                    
"Time-BodyGyroscope-StandardDeviation()-Y"                     "Time-BodyGyroscope-StandardDeviation()-Z"                    
"Time-BodyGyroscopeJerk-Mean()-X"                              "Time-BodyGyroscopeJerk-Mean()-Y"                             
"Time-BodyGyroscopeJerk-Mean()-Z"                              "Time-BodyGyroscopeJerk-StandardDeviation()-X"                
"Time-BodyGyroscopeJerk-StandardDeviation()-Y"                 "Time-BodyGyroscopeJerk-StandardDeviation()-Z"                
"Time-BodyAccelerometerMagnitude-Mean()"                       "Time-BodyAccelerometerMagnitude-StandardDeviation()"         
"Time-GravityAccelerometerMagnitude-Mean()"                    "Time-GravityAccelerometerMagnitude-StandardDeviation()"      
"Time-BodyAccelerometerJerkMagnitude-Mean()"                   "Time-BodyAccelerometerJerkMagnitude-StandardDeviation()"     
"Time-BodyGyroscopeMagnitude-Mean()"                           "Time-BodyGyroscopeMagnitude-StandardDeviation()"             
"Time-BodyGyroscopeJerkMagnitude-Mean()"                       "Time-BodyGyroscopeJerkMagnitude-StandardDeviation()"         
"Frequency-BodyAccelerometer-Mean()-X"                         "Frequency-BodyAccelerometer-Mean()-Y"                        
"Frequency-BodyAccelerometer-Mean()-Z"                         "Frequency-BodyAccelerometer-StandardDeviation()-X"           
"Frequency-BodyAccelerometer-StandardDeviation()-Y"            "Frequency-BodyAccelerometer-StandardDeviation()-Z"           
"Frequency-BodyAccelerometerJerk-Mean()-X"                     "Frequency-BodyAccelerometerJerk-Mean()-Y"                    
"Frequency-BodyAccelerometerJerk-Mean()-Z"                     "Frequency-BodyAccelerometerJerk-StandardDeviation()-X"       
"Frequency-BodyAccelerometerJerk-StandardDeviation()-Y"        "Frequency-BodyAccelerometerJerk-StandardDeviation()-Z"       
"Frequency-BodyGyroscope-Mean()-X"                             "Frequency-BodyGyroscope-Mean()-Y"                            
"Frequency-BodyGyroscope-Mean()-Z"                             "Frequency-BodyGyroscope-StandardDeviation()-X"               
"Frequency-BodyGyroscope-StandardDeviation()-Y"                "Frequency-BodyGyroscope-StandardDeviation()-Z"               
"Frequency-BodyAccelerometerMagnitude-Mean()"                  "Frequency-BodyAccelerometerMagnitude-StandardDeviation()"    
"Frequency-BodyAccelerometerJerkMagnitude-Mean()"              "Frequency-BodyAccelerometerJerkMagnitude-StandardDeviation()"
"Frequency-BodyGyroscopeMagnitude-Mean()"                      "Frequency-BodyGyroscopeMagnitude-StandardDeviation()"        
"Frequency-BodyGyroscopeJerkMagnitude-Mean()"                  "Frequency-BodyGyroscopeJerkMagnitude-StandardDeviation()"   

The measurements in this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The time domain signals (prefix "Time") were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Time-BodyAccelerometer-XYZ and Time-GravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time-BodyAccelerometerJerk-XYZ and Time-BodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time-BodyAccelerometerMagnitude, Time-GravityAccelerometerMagnitude, Time-BodyAccelerometerJerkMagnitude, Time-BodyGyroscopeMagnitude, Time-BodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency-BodyAccelerometer-XYZ, Frequency-BodyAccJerk-XYZ, Frequency-BodyGyroscope-XYZ, Frequency-BodyAccelerometerJerkMagnitude, Frequency-BodyGyroscopeMagnitude, Frequency-BodyGyroscopeJerkMagnitude. (Note "frequency" indicates frequency domain signals). 


##Transformations

1. We label the datasets, train and test, with the separate label files stored under featurelabels.
2. Next, the column names for both test and train datasets are weeded out to include only those variables that are a mean or std. Some variables are a Frequency mean, not the same as mean, so names that include Freq are omitted in a second command.
3. Train and test data sets are respectively combined with their subject and activities variables column-wise, and then both sets are stacked one on top of the other to create one table with corresponding column names and each row labeled with the subject and activity number and more readable variable names.
4. We replace the numbers used for the activity variable with their coresponding labels (walking,standing, etc..).
5. Using aggretate(), we calculate the mean for each variable by subject and activity. We save this table of means as a text file. 

License:
========

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
