CodeBook
Dataset Overview
The dataset represents data collected from the accelerometers of the Samsung Galaxy S smartphone. It contains measurements of various activities performed by subjects, including walking, walking upstairs, walking downstairs, sitting, standing, and laying. The dataset consists of both training and test data, each containing data on features collected during these activities.

Data Transformation Steps
Data Merging:

The training and test datasets were combined into a single dataset.
Variable Selection:

Only measurements related to the mean and standard deviation for each measurement were retained for analysis. This was done by selecting columns with "mean()" or "std()" in their name.
Descriptive Activity Names:

The activities were labeled using descriptive names such as "WALKING", "SITTING", etc., from the activity_labels dataset.
Descriptive Variable Names:

Column names were updated to be more descriptive based on the feature list provided in the dataset.
Tidy Dataset:

A second dataset was created by averaging each variable for each activity and subject.
Variables
Subject
Description: The identifier of the subject performing the activity.
Data Type: Integer
Range: 1 to 30 (30 subjects in total)
Activity
Description: The activity being performed by the subject.
Data Type: Factor (categorical)
Possible Values:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING
Feature Variables
These are various measurements of the accelerometer data, including means and standard deviations for different body movements. Examples include:
tBodyAcc-mean()-X: Mean of body acceleration in the X direction.
tBodyAcc-std()-X: Standard deviation of body acceleration in the X direction.
More features follow the same naming pattern.
Each feature corresponds to one of the columns representing accelerometer readings or their derivatives.

Data Transformation
Merging: The training and test sets are combined into a single dataset.
Column Subset: Only columns related to the mean and standard deviation are selected.
Labeling Activities: The activities are labeled with descriptive names.
Tidy Data: A final dataset is created with the mean of each variable for each activity and subject.
