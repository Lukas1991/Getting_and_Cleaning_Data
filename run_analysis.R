#Reading Data into R:
subjtst <- read.table("./GettingData/test/subject_test.txt")
subjtrn<- read.table("./GettingData/train/subject_train.txt")

Xtst<- read.table("./GettingData/test/X_test.txt")
Xtrn<- read.table("./GettingData/train/X_train.txt")

Ytst<- read.table("./GettingData/test/y_test.txt")
Ytrn<- read.table("./GettingData/train/y_train.txt")

act<- read.table("./GettingData/activity_labels.txt")
feats <- read.table("./GettingData/features.txt")  
