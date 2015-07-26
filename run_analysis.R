#Read all of the relevant files into R
xtest <- read.table("C:/Users/nicdorda/Documents/UCI HAR Dataset/test/X_test.txt",
                    header=FALSE,
                    sep=""         
)
ytest <- read.table("C:/Users/nicdorda/Documents/UCI HAR Dataset/test/y_test.txt",
                    header=FALSE,
                    sep=""         
)
subtest <- read.table("C:/Users/nicdorda/Documents/UCI HAR Dataset/test/subject_test.txt",
                      header=FALSE,
                      sep=""         
)
xtrain <- read.table("C:/Users/nicdorda/Documents/UCI HAR Dataset/train/X_train.txt",
                     header=FALSE,
                     sep=""         
)
ytrain <- read.table("C:/Users/nicdorda/Documents/UCI HAR Dataset/train/y_train.txt",
                     header=FALSE,
                     sep=""         
)
subtrain <- read.table("C:/Users/nicdorda/Documents/UCI HAR Dataset/train/subject_train.txt",
                       header=FALSE,
                       sep=""         
)
activitylab <- read.table("C:/Users/nicdorda/Documents/UCI HAR Dataset/activity_labels.txt",
                          header=FALSE,
                          sep=""         
)
features1 <- read.table("C:/Users/nicdorda/Documents/UCI HAR Dataset/features.txt"
)
#Combined test sets with training sets
onex <-(rbind(xtest, xtrain))
oney <-(rbind(ytest, ytrain))
onesub <-(rbind(subtest, subtrain))

meanstdfeatures <- grep("-(mean|std)\\(\\)", features1[, 2])
onex <- onex[, meanstdfeatures]
names(onex) <- features1[meanstdfeatures, 2]
varNames = names(onex)
varNames <- gsub(pattern="^t",replacement="time",x=varNames)
varNames <- gsub(pattern="^f",replacement="freq",x=varNames)
varNames <- gsub(pattern="-?mean[(][)]-?",replacement="Mean",x=varNames)
varNames <- gsub(pattern="-?std[()][)]-?",replacement="Std",x=varNames)
varNames <- gsub(pattern="-?meanFreq[()][)]-?",replacement="MeanFreq",x=varNames)
varNames <- gsub(pattern="BodyBody",replacement="Body",x=varNames)
names(onex) <- varNames