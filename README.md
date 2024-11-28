README for Human Activity Recognition Data Analysis
Project Overview
This project is focused on analyzing data from a Human Activity Recognition (HAR) dataset collected from Samsung Galaxy S smartphones. The dataset includes measurements of various activities such as walking, sitting, standing, and more. The objective of this project is to clean the raw data, extract relevant features, and create a tidy dataset suitable for further analysis.

Script Overview
The run_analysis.R script performs the following steps:

Merges the training and test datasets into one dataset.
Extracts only the measurements that represent the mean and standard deviation for each measurement.
Labels the activities in the dataset with descriptive names.
Appropriately names the dataset columns with descriptive variable names.
Creates a second dataset containing the average of each variable for each activity and subject.
How to Run the Script
Prerequisites
R should be installed on your machine.
You need to install the dplyr package in R, which is used for data manipulation.
To install the dplyr package, run the following command in R:

install.packages("dplyr")
