counties <- read.table("countyComplete.txt", sep="\t", header=TRUE)
png("countyFemale.png", width=600, height=480)
hist(counties$female, breaks=100, xlab="Percent of Females in county", main=NULL, cex.lab=1.5, cex.axis=1.5)
dev.off()

png("countyBlack.png", width=600, height=480)
hist(counties$black, breaks=100, xlab="Percent of African Americans in county", main=NULL, cex.lab=1.5, cex.axis=1.5)
dev.off()

# Database of student evals
testfile <-read.table('/Users/haris/testfile.txt', sep="\t", header=TRUE)

testfile <- subset(testfile, question_id != 7)
testfile2 <- reshape(testfile, direction="wide", idvar="eval_hash",
   timevar="prompt", v.names="text_value", drop=c("id", "question_id", "num_value"))

splitquestions <- grep("text_value", names(testfile2))
for (i in splitquestions) {
   testfile2[,i] = as.factor(as.character(testfile2[,i]))
}
nms <- names(testfile2)[splitquestions]
names(testfile2)[splitquestions] <- substr(nms, 12, 1000)

amountLevels <- levels(testfile2[,7])
amountLevels <- c("nothing", "little", "average amount", "a lot", "exceptional amount")
amountLearned <- ordered(testfile2[,7], levels=amountLevels)

completedLevels <- levels(testfile2[,4])
completed <- ordered(testfile2[,4], completedLevels)
