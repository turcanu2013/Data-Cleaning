
#Read in data
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="UCI HAR Dataset.zip", method="curl")
unzip("UCI HAR Dataset.zip")
train<-read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
featurelabels<-read.table("UCI HAR Dataset/features.txt",header=FALSE, row.names=1, as.is=TRUE)
train_subject<-read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE, col.names=c("Subject"))
train_activities<- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE, col.names=c("Activity"))
test<-read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
test_subject<-read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE, col.names=c("Subject"))
test_activities<- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE, col.names=c("Activity"))
activity_label<-read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE)

# Appropriately labels the data set with provided variable names.
colnames(train)<-featurelabels$V2
colnames(test)<-featurelabels$V2

# Extracts only the measurements on the mean and standard deviation for each measurement.
train<-train[,grepl("mean|std", names(train))]
train<-train[,!grepl("Freq", names(train))]
train<-cbind(train_subject, train_activities, train)
test<-test[,grepl("mean|std", names(test))]
test<-test[,!grepl("Freq", names(test))]

# Merges the training and the test sets to create one data set.  Appropriately labels the data set with descriptive variable names.
test<-cbind(test_subject, test_activities, test)
all_data<-rbind(train,test)
colnames(all_data)<-gsub("std()", "StandardDeviation", colnames(all_data))
colnames(all_data)<-gsub("Mag", "Magnitude", colnames(all_data))
colnames(all_data)<-gsub("mean()", "Mean", colnames(all_data))
colnames(all_data)<-gsub("Acc", "Accelerometer", colnames(all_data))
colnames(all_data)<-gsub("^t", "Time-", colnames(all_data))
colnames(all_data)<-gsub("^f", "Frequency-", colnames(all_data))
colnames(all_data)<-gsub("Gyro", "Gyroscope", colnames(all_data))
colnames(all_data)<-gsub("BodyBody", "Body", colnames(all_data))

# Uses descriptive activity names to name the activities in the data set.
label<-activity_label$V2
all_data$Activity<-factor(all_data$Activity,labels=label)

# Step 5, independent tidy data set with the average of each variable for each activity and each subject.
mean_all_data<-aggregate(.~Activity + Subject,data=all_data, mean)
write.table(mean_all_data,"tidydata.txt", row.names=FALSE)