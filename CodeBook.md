## Original Data Source / Human Activity Recognition Using Smartphones Dataset / Version 1.0 / www.smartlab.ws 
==================================================================
Original Dataset credits: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws

==================================================================
Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

## Modifications introduced to original dataset 

1. Script merged training and testing data set and created one data set cointaing all records. 
2. Means and standard deviation measurements were extracted from original data sets. 
3. Descriptive activity names (Laying, Sitting, Standing, Walking, Walking_downstairs, Walking_Upstairs) were linked to each measurement. 
4. Descriptive variable names (spelled out names) were used for all variables (see below).
5. Averages of each variable for each activity and each subject were generated.
5. Data units for all variables remain unmodified.
6. Tidy data set (TidyDataset.txt) reflects all transformations listed above. 

## List of short variable names as described in original data set
 [1] Subject                      
 [2] Activity                   
 [3] tBodyAcc-mean()-X
 [4] tBodyAcc-mean()-Y          
 [5] tBodyAcc-mean()-Z            
 [6] tBodyAcc-std()-X           
 [7] tBodyAcc-std()-Y
 [8] tBodyAcc-std()-Z           
 [9] tGravityAcc-mean()-X       
[10] tGravityAcc-mean()-Y       
[11] tGravityAcc-mean()-Z      
[12] tGravityAcc-std()-X        
[13] tGravityAcc-std()-Y  
[14] tGravityAcc-std()-Z        
[15] tBodyAccJerk-mean()-X   
[16] tBodyAccJerk-mean()-Y      
[17] tBodyAccJerk-mean()-Z      
[18] tBodyAccJerk-std()-X       
[19] tBodyAccJerk-std()-Y   
[20] tBodyAccJerk-std()-Z       
[21] tBodyGyro-mean()-X         
[22] tBodyGyro-mean()-Y         
[23] tBodyGyro-mean()-Z         
[24] tBodyGyro-std()-X          
[25] tBodyGyro-std()-Y  
[26] tBodyGyro-std()-Z          
[27] tBodyGyroJerk-mean()-X    
[28] tBodyGyroJerk-mean()-Y     
[29] tBodyGyroJerk-mean()-Z    
[30] tBodyGyroJerk-std()-X      
[31] tBodyGyroJerk-std()-Y       
[32] tBodyGyroJerk-std()-Z      
[33] tBodyAccMag-mean()   
[34] tBodyAccMag-std()          
[35] tGravityAccMag-mean()     
[36] tGravityAccMag-std()       
[37] tBodyAccJerkMag-mean() 
[38] tBodyAccJerkMag-std()      
[39] tBodyGyroMag-mean()      
[40] tBodyGyroMag-std()         
[41] tBodyGyroJerkMag-mean()   
[42] tBodyGyroJerkMag-std()     
[43] fBodyAcc-mean()-X     
[44] fBodyAcc-mean()-Y          
[45] fBodyAcc-mean()-Z    
[46] fBodyAcc-std()-X           
[47] fBodyAcc-std()-Y    
[48] fBodyAcc-std()-Z           
[49] fBodyAccJerk-mean()-X 
[50] fBodyAccJerk-mean()-Y      
[51] fBodyAccJerk-mean()-Z 
[52] fBodyAccJerk-std()-X       
[53] fBodyAccJerk-std()-Y  
[54] fBodyAccJerk-std()-Z       
[55] fBodyGyro-mean()-X   
[56] fBodyGyro-mean()-Y         
[57] fBodyGyro-mean()-Z  
[58] fBodyGyro-std()-X          
[59] fBodyGyro-std()-Y    
[60] fBodyGyro-std()-Z          
[61] fBodyAccMag-mean()    
[62] fBodyAccMag-std()          
[63] fBodyBodyAccJerkMag-mean()  
[64] fBodyBodyAccJerkMag-std()  
[65] fBodyBodyGyroMag-mean()      
[66] fBodyBodyGyroMag-std()     
[67] fBodyBodyGyroJerkMag-mean()  
[68] fBodyBodyGyroJerkMag-std() 

## List of descriptive variable names used in updated data set  
 [1] "Subject"                                                          
 [2] "Activity"                                                         
 [3] "TimeBodyAcceleration.Mean...X"                                    
 [4] "TimeBodyAcceleration.Mean...Y"                                    
 [5] "TimeBodyAcceleration.Mean...Z"                                    
 [6] "TimeBodyAcceleration.StandardDeviation...X"                       
 [7] "TimeBodyAcceleration.StandardDeviation...Y"                       
 [8] "TimeBodyAcceleration.StandardDeviation...Z"                       
 [9] "TimeGravityAcceleration.Mean...X"                                 
[10] "TimeGravityAcceleration.Mean...Y"                                 
[11] "TimeGravityAcceleration.Mean...Z"                                 
[12] "TimeGravityAcceleration.StandardDeviation...X"                    
[13] "TimeGravityAcceleration.StandardDeviation...Y"                    
[14] "TimeGravityAcceleration.StandardDeviation...Z"                    
[15] "TimeBodyAccelerationJerk.Mean...X"                                
[16] "TimeBodyAccelerationJerk.Mean...Y"                                
[17] "TimeBodyAccelerationJerk.Mean...Z"                                
[18] "TimeBodyAccelerationJerk.StandardDeviation...X"                   
[19] "TimeBodyAccelerationJerk.StandardDeviation...Y"                   
[20] "TimeBodyAccelerationJerk.StandardDeviation...Z"                   
[21] "TimeBodyAngularVelocity.Mean...X"                                 
[22] "TimeBodyAngularVelocity.Mean...Y"                                 
[23] "TimeBodyAngularVelocity.Mean...Z"                                 
[24] "TimeBodyAngularVelocity.StandardDeviation...X"                    
[25] "TimeBodyAngularVelocity.StandardDeviation...Y"                    
[26] "TimeBodyAngularVelocity.StandardDeviation...Z"                    
[27] "TimeBodyAngularVelocityJerk.Mean...X"                             
[28] "TimeBodyAngularVelocityJerk.Mean...Y"                             
[29] "TimeBodyAngularVelocityJerk.Mean...Z"                             
[30] "TimeBodyAngularVelocityJerk.StandardDeviation...X"                
[31] "TimeBodyAngularVelocityJerk.StandardDeviation...Y"                
[32] "TimeBodyAngularVelocityJerk.StandardDeviation...Z"                
[33] "TimeBodyAccelerationMagnitude.Mean.."                             
[34] "TimeBodyAccelerationMagnitude.StandardDeviation.."                
[35] "TimeGravityAccelerationMagnitude.Mean.."                          
[36] "TimeGravityAccelerationMagnitude.StandardDeviation.."             
[37] "TimeBodyAccelerationJerkMagnitude.Mean.."                         
[38] "TimeBodyAccelerationJerkMagnitude.StandardDeviation.."            
[39] "TimeBodyAngularVelocityMagnitude.Mean.."                          
[40] "TimeBodyAngularVelocityMagnitude.StandardDeviation.."             
[41] "TimeBodyAngularVelocityJerkMagnitude.Mean.."                      
[42] "TimeBodyAngularVelocityJerkMagnitude.StandardDeviation.."         
[43] "FrequencyBodyAcceleration.Mean...X"                               
[44] "FrequencyBodyAcceleration.Mean...Y"                               
[45] "FrequencyBodyAcceleration.Mean...Z"                               
[46] "FrequencyBodyAcceleration.StandardDeviation...X"                  
[47] "FrequencyBodyAcceleration.StandardDeviation...Y"                  
[48] "FrequencyBodyAcceleration.StandardDeviation...Z"                  
[49] "FrequencyBodyAccelerationJerk.Mean...X"                           
[50] "FrequencyBodyAccelerationJerk.Mean...Y"                           
[51] "FrequencyBodyAccelerationJerk.Mean...Z"                           
[52] "FrequencyBodyAccelerationJerk.StandardDeviation...X"              
[53] "FrequencyBodyAccelerationJerk.StandardDeviation...Y"              
[54] "FrequencyBodyAccelerationJerk.StandardDeviation...Z"              
[55] "FrequencyBodyAngularVelocity.Mean...X"                            
[56] "FrequencyBodyAngularVelocity.Mean...Y"                            
[57] "FrequencyBodyAngularVelocity.Mean...Z"                            
[58] "FrequencyBodyAngularVelocity.StandardDeviation...X"               
[59] "FrequencyBodyAngularVelocity.StandardDeviation...Y"               
[60] "FrequencyBodyAngularVelocity.StandardDeviation...Z"               
[61] "FrequencyBodyAccelerationMagnitude.Mean.."                        
[62] "FrequencyBodyAccelerationMagnitude.StandardDeviation.."           
[63] "FrequencyBodyBodyAccelerationJerkMagnitude.Mean.."                
[64] "FrequencyBodyBodyAccelerationJerkMagnitude.StandardDeviation.."   
[65] "FrequencyBodyBodyAngularVelocityMagnitude.Mean.."                 
[66] "FrequencyBodyBodyAngularVelocityMagnitude.StandardDeviation.."    
[67] "FrequencyBodyBodyAngularVelocityJerkMagnitude.Mean.."             
[68] "FrequencyBodyBodyAngularVelocityJerkMagnitude.StandardDeviation.."


