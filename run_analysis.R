library(dplyr)
# Load training and test data
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Load feature names and activity labels
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Combine the training and testing sets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Extract only the measurements on the mean and standard deviation
selected_features <- grep("mean\\(\\)|std\\(\\)", features$V2)
x_data <- x_data[, selected_features]

# Name the columns with descriptive variable names
colnames(x_data) <- features$V2[selected_features]


y_data$V1 <- factor(y_data$V1, levels = activity_labels$V1, labels = activity_labels$V2)
colnames(y_data) <- "Activity"

colnames(subject_data) <- "Subject"

# Combine subject, activity, and measurements into one data frame
tidy_data <- cbind(subject_data, y_data, x_data)

# Create a second tidy data set with the average of each variable for each activity and each subject
tidy_data_avg <- tidy_data %>%
  group_by(Subject, Activity) %>%
  summarise_all(funs(mean))

# Save the tidy dataset
write.table(tidy_data_avg, "tidy_data.txt", row.names = FALSE)

