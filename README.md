# Getting and Cleaning Data / Course Project

## Instructions (modified from Assignment Instructions)

## Goal
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The project's goal is to prepare tidy data that can be used for later analysis. The repo you create explains how all of the scripts work and how they are connected. You will be graded by your peers on a series of yes/no questions related to the project.

## Review criteria
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and  summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

## Files to submit 
You will be required to submit: 
1. A tidy data set as described below.
2. A link to a Github repository with your script for performing the analysis.
3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
4. A README.md file should be included in the repo with your scripts. 
5. An R script called run.analysis.R that creates a tidy data set as described below.   

## Data sources
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## R Script features
You should create one R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

