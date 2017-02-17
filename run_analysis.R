# Course 3: Getting and Cleaning Data
# Peer-graded Assignment / Course Project
# 
# R script that performs a series of manipulations of variables from
# a Samsung data set to generate a tidy data set:

setwd("C://Users/Hector/Desktop/Coursera/Course3_Getting&CleaningData")
if(!file.exists("./data/SamsungData")){dir.create("./data/SamsungData")}
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./data/SamsungData/UCI HAR Dataset.zip")
unzip("./data/SamsungData/UCI HAR Dataset.zip")

# Read general information files located in:
#     "./Getting&CleaningData/UCI HAR Dataset"

actlabels <- read.table("UCI HAR Dataset/activity_labels.txt")
View(actlabels)
head(actlabels)

#   V1                 V2
# 1  1            WALKING
# 2  2   WALKING_UPSTAIRS
# 3  3 WALKING_DOWNSTAIRS
# 4  4            SITTING
# 5  5           STANDING
# 6  6             LAYING

features <- read.table("UCI HAR Dataset/features.txt")
View(features)
head(features)

#   V1                V2
# 1  1 tBodyAcc-mean()-X
# 2  2 tBodyAcc-mean()-Y
# 3  3 tBodyAcc-mean()-Z
# 4  4  tBodyAcc-std()-X
# 5  5  tBodyAcc-std()-Y
# 6  6  tBodyAcc-std()-Z

# Read training files
sbj_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
xtrain_Data <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain_ActLabelCode <- read.table("UCI HAR Dataset/train/Y_train.txt")
View(sbj_train); View(xtrain_Data); View(ytrain_ActLabelCode)

# Read testing files
sbj_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
xtest_Data <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest_ActLabelCode <- read.table("UCI HAR Dataset/test/Y_test.txt")
View(sbj_test); View(xtest_Data); View(ytest_ActLabelCode)
#==============================================================================

## 1.- Merges training and test sets to create one data set.
xmerg_Data <- rbind(xtrain_Data, xtest_Data)
ymerg_ActLabelCode <- rbind(ytrain_ActLabelCode, ytest_ActLabelCode)
sbjTT <- rbind(sbj_train, sbj_test)
View(xmerg_Data); View(ymerg_ActLabelCode); View(sbjTT)

dim(xtrain_Data)           # [1] 7352  561
dim(xtest_Data)            # [1] 2947  561

dim(ytrain_ActLabelCode)   # [1] 7352    1
dim(ytest_ActLabelCode)    # [1] 2947    1

dim(sbj_train)             # [1] 7352    1
dim(sbj_test)              # [1] 2947  561

dim(xmerg_Data)            # [1] 10299 561
dim(ymerg_ActLabelCode)    # [1] 10299   1
dim(sbjTT)                 # [1] 10299   1
#==============================================================================

## 2.- Extracts only the measurements on the mean and standard deviation 
##     for each measurement.

# First, subset only variables that contain "mean" and "std" in their names. 
# That information is in the second column of the "features.txt" file.
 
mean_std <- grep("mean\\(\\)|std\\(\\)", features[, 2])
mean_stdco

#  [1]   1   2   3   4   5   6
#  [7]  41  42  43  44  45  46
# [13]  81  82  83  84  85  86
# [19] 121 122 123 124 125 126
# [25] 161 162 163 164 165 166
# [31] 201 202 214 215 227 228
# [37] 240 241 253 254 266 267
# [43] 268 269 270 271 345 346
# [49] 347 348 349 350 424 425
# [55] 426 427 428 429 503 504
# [61] 516 517 529 530 542 543

# count all instances of "mean" and "std"
length(mean_std)
# [1] 66

# Matches values representing 'mean' and 'std' from 'xmerg_Data' with the 
# 66 elements (mean and std index) identified in 'features' and asigned to the
# variable 'mean_std'. In other words, combines 'xmerg_Data' and 'mean_std'.
# 
var_mean_std <- xmerg_Data[, mean_std]
dim(var_mean_std)
# [1] 10299    66

head(var_mean_std)
#          V1          V2         V3
# 1 0.2885845 -0.02029417 -0.1329051
# 2 0.2784188 -0.01641057 -0.1235202
# 3 0.2796531 -0.01946716 -0.1134617
# 4 0.2791739 -0.02620065 -0.1232826
# 5 0.2766288 -0.01656965 -0.1153619
# 6 0.2771988 -0.01009785 -0.1051373
# ...    V543 

# A total of 66 columns were isolated and are now labeled with the vector
# 'mean_std (V1:V6, V41:V46, V81:V86, and so on). 
#==============================================================================

## 3.- Uses descriptive activity names to name the activities 
##     in the data set

# The variable 'ymerg_ActNames' created with the code below is a dataframe of 
# a single column listing activity names for the 10,299 rows of training and
# testing data. However, the actual data is not yet included in this dataframe. 
 
ymerg_ActNames <- ymerg_ActLabelCode
ymerg_ActNames[, 1] <- actlabels[ymerg_ActNames[, 1], 2]
head(ymerg_ActNames)
#         V1
# 1 STANDING
# 2 STANDING
# 3 STANDING
# 4 STANDING
# 5 STANDING
# 6 STANDING

View(ymerg_ActNames)
#==============================================================================

## 4.- Appropriately labels the data set with descriptive variable names.

colnam <- features[mean_std, 2]      # These are the column variable names

head(colnam)
# [1] tBodyAcc-mean()-X
# [2] tBodyAcc-mean()-Y
# [3] tBodyAcc-mean()-Z
# [4] tBodyAcc-std()-X 
# [5] tBodyAcc-std()-Y 
# [6] tBodyAcc-std()-Z 
# 477 Levels: angle(tBodyAccJerkMean),gravityMean) ...

class(colnam)
# [1] "factor"

colnames(var_mean_std) <- colnam
colnames(sbjTT) <- "Subject"
colnames(ymerg_ActNames) <- "Activity"

CleanTable <- cbind(sbjTT, ymerg_ActNames, var_mean_std)
View(CleanTable)
summary(CleanTable)

# Renaming labels with descriptive names. 
DescNamesTable <- CleanTable
names(DescNamesTable) <- make.names(names(DescNamesTable))
names(DescNamesTable) <- gsub("^t", "Time", names(DescNamesTable))
names(DescNamesTable) <- gsub("^f", "Frequency", names(DescNamesTable))
names(DescNamesTable) <- gsub("Acc", "Acceleration", names(DescNamesTable))
names(DescNamesTable) <- gsub("Gyro", "AngularVelocity", names(DescNamesTable))
names(DescNamesTable) <- gsub("Mag", "Magnitude", names(DescNamesTable))
names(DescNamesTable) <- gsub("mean", "Mean", names(DescNamesTable))
names(DescNamesTable) <- gsub("std", "StandardDeviation", names(DescNamesTable))

View(DescNamesTable)
#===============================

## 5.- From the data set in step 4, creates a second, independent tidy data set 
##     with the average of each variable for each activity and each subject.

library(dplyr)
tidyData1 <- tbl_df(DescNamesTable)
dim(tidyData1)
tidyData2 <- arrange(tidyData1, Subject, Activity)
View(tidyData2)
by_Subject_Act <- group_by(tidyData2, Subject, Activity)
tidyData3 <- summarize_all(by_Subject_Act, funs(mean))

head(tidyData3)
# Source: local data frame [6 x 68]
# Groups: Subject [1]

# Subject           Activity TimeBodyAcceleration.Mean...X
#   <int>             <fctr>                         <dbl>
# 1     1             LAYING                     0.2215982
# 2     1            SITTING                     0.2612376
# 3     1           STANDING                     0.2789176
# 4     1            WALKING                     0.2773308
# 5     1 WALKING_DOWNSTAIRS                     0.2891883
# 6     1   WALKING_UPSTAIRS                     0.2554617
# ... with 65 more variables: TimeBodyAcceleration.Mean...Y <dbl>,

View(tidyData3)
write.table(tidyData3, file = "TidyDataset.txt", row.names = FALSE)




