#Reading Data into R:
subjt1 <- read.table("test/subject_test.txt")
subjt2<- read.table("/train/subject_train.txt")
S <- rbind(subjt1,subjt2)

X1<- read.table("test/X_test.txt")
X2<- read.table("train/X_train.txt")
X <- rbind(X1,X2)


Y1<- read.table("test/y_test.txt")
Y2<- read.table("train/y_train.txt")
Y <- rbind(Y1,Y2)

act<- read.table("activity_labels.txt")
feats <- read.table("features.txt")  

# 2. Extracts only the measurements on the mean and standard deviation for each measurement
good_features <- grep("-mean\\(\\)|-std\\(\\)", feats[, 2])
X <- X[, good_features]
names(X) <- features[good_features, 2]

# 3. Uses descriptive activity names to name the activities in the data set
Y$V1[which(Y$V1==1)]<- "WALKING"
Y$V1[which(Y$V1==2)]<- "WALKING_UPSTAIRS"
Y$V1[which(Y$V1==3)]<- "WALKING_DOWNSTAIRS"
Y$V1[which(Y$V1==4)]<- " SITTING"
Y$V1[which(Y$V1==5)]<- "STANDING"
Y$V1[which(Y$V1==6)]<- "LAYING"
names(Y) <- "activity"

# 4.Appropriately labels the data set with descriptive activity names. 
names(S) <- "subject"
cleaned <- cbind(S, Y, X)

# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.
library(data.table)
dt<- data.table(cleaned)
meanData<- dt[, lapply(.SD, mean), by=c("subject", "activity")]
meanData<- meanData[order(meanData$subject),]

#Exporting data into a .txt file:
write.table(meanData, "data_set_with_the_averages.txt",, sep="\t")











