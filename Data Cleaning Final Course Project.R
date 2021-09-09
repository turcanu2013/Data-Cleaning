#README.md
#run_analysis.R x
#codebook, updates existing codebook
#tidydata X

#First, we download the data from the given url and save it as a file. We read it into R by unziping the downloaded 
# file and using read.table() to read in all relevant data. Since there are no headers in these datasets, we set the header=FALSE.

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

# We label the datasets, train and test, with the separate label files stored under featurelabels.
colnames(train)<-featurelabels$V2
colnames(test)<-featurelabels$V2


# Next, the column names for both test and train datasets are weeded out to include only those variables that are a mean or std. 
# Some variables are a Frequency mean, not the same as mean, so names that include Freq are omitted in a second command.
train<-train[,grepl("mean|std", names(train))]
train<-train[,!grepl("Freq", names(train))]
test<-test[,grepl("mean|std", names(test))]
test<-test[,!grepl("Freq", names(test))]

# Train and test data sets are respectively combined with their subject and activities variables column-wise, and then 
# both sets are stacked one on top of the other to create one table with corresponding column names and each row labeled 
# with the subject and activity number. Once the data is combined, the variable names are edited to be more understandable.
train<-cbind(train_subject, train_activities, train)
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


# We replace the numbers used for the activity variable with their coresponding labels (walking,standing, etc..).
label<-activity_label$V2
all_data$Activity<-factor(all_data$Activity,labels=label)

# Using aggretate(), we calculate the mean for each variable by subject and activity. We save this table of means as a text file. 
mean_all_data<-aggregate(.~Activity + Subject,data=all_data, mean)
write.table(mean_all_data,"tidydata.txt", row.names=FALSE)
