#load data
trainX <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
testX <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
testY <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
features <- read.table("./data/UCI HAR Dataset/features.txt")

#1 combine data sets
X <- rbind(trainX, testX)
colnames(X) <- features$V2
Y <- rbind(trainY, testY)
subjects <- rbind(trainSubject, testSubject)

#2 extract only the cols with mean and std
X <- X[,grep("[Mm]ean[(]|[Ss]td[(]", features$V2, value = TRUE)]
temp <- cbind(subject = subjects$V1, X)
singleTableLarge <- cbind(activity = Y$V1, temp)

#3 use descriptive activity names
singleTableLarge[,"activity"] <- factor(singleTableLarge[,"activity"], levels = c(1:6),
  labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

#4 descriptive variable names
modifiedNames <- gsub("\\(\\)", "",names(singleTableLarge))
modifiedNames <- gsub("^t", "time", modifiedNames)
modifiedNames <- gsub("^f", "frequency", modifiedNames)
colnames(singleTableLarge) <- modifiedNames

#5 combine rows to make simple table
singleTableSimple <- aggregate(. ~ subject+activity, data = singleTableLarge, mean)

#rearrange cols
singleTableSimple <- singleTableSimple[,c(2,1,3:68)]

#persist data
write.table(singleTableSimple, file = "./SimpleTable.txt", append = FALSE, row.names = FALSE)
