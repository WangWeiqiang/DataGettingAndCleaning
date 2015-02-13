##read data from training and test data file, assume that current work directory is "UCI HAR Dataset" which includes folders "test" and "train"
x_test<-read.table("./test/x_test.txt",sep="")
y_test<-read.table("./test/y_test.txt",sep="")
x_train<-read.table("./train/x_train.txt",sep="")
y_train<-read.table("./train/y_train.txt",sep="")

## set column name for label data
names(y_test)="activity_label"
names(y_train)="activity_label"

##read features lables data
feature<-read.table("features.txt",sep="") ## 561 x 2
##read activity labels
activity_labels<-read.table("activity_labels.txt",sep="") ## 6 x 2

##set names for x_train and x_test data with features label data
names(x_train)=feature[,2]
names(x_test)=feature[,2]

x_train<-cbind(x_train,y_train)
x_test<-cbind(x_test,y_test)

## merges the traning and test sets to create on data set
dataset<-rbind(x_train,x_test)

##extract the mean and standard deviation data from above "dataset"
##and merge them together
meanData<-dataset[,grep("mean\\(\\)",names(dataset))]
stdData<-dataset[,grep("std\\(\\)",names(dataset))]
ExtractData<-cbind(meanData,stdData,activity=dataset[,"activity_label"])

##creates a second, independent tidy data set with the average of each variable for each activity and each subject.
averageData<-aggregate(ExtractData[,(1:ncol(ExtractData)-1)], by=list(Activity=ExtractData$activity), FUN=mean)

##change activity label data from number to related name
averageData$Activity=activity_labels[,2]

##save the data into myData.txt
write.table(averageData,file="myData.txt",row.names=FALSE,col.names=TRUE,sep="\t")

