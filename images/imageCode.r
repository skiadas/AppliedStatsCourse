counties <- read.table("countyComplete.txt", sep="\t", header=TRUE)
png("countyFemale.png", width=600, height=480)
hist(counties$female, breaks=100, xlab="Percent of Females in county", main=NULL, cex.lab=1.5, cex.axis=1.5)
dev.off()

png("countyBlack.png", width=600, height=480)
hist(counties$black, breaks=100, xlab="Percent of African Americans in county", main=NULL, cex.lab=1.5, cex.axis=1.5)
dev.off()

source("http://www.openintro.org/stat/data/cdc.R") # Load cdc data
cdc$genhlth <- ordered(cdc$genhlth, levels = rev(levels(cdc$genhlth)))
cdc$exerany <- factor(cdc$exerany, labels=c("No", "Yes"))
png("clusteredBar.png", width=600, height=380)
with(cdc, barplot(table(exerany, genhlth), beside=TRUE, legend.text=TRUE))
dev.off()
png("stackedBar.png", width=600, height=380)
with(cdc, barplot(prop.table(table(genhlth, exerany), 2)*100, horiz=TRUE, legend.text=TRUE, args.legend=list(x="top", horiz=TRUE, inset=c(0.5, -0.15))))
dev.off()

png("stackedBarPanels.png", width=600, height=380)
print(with(cdc, barchart(prop.table(table(exerany, gender, genhlth), c(1,2))*100, auto.key=list(columns = 5))))
dev.off()

cdc$bmi <- with(cdc,weight *0.453592/(height*0.0254)^2)
with(cdc, boxplot(bmi~genhlth, horizontal=TRUE, xlab="Body-mass index"))

### Showing a constant model #####
my <- round(mean(cdc$height), 3)
xlims = my + c(-1/2,1/2)*sd(cdc$height)
f=function(xs) { sapply(xs, function(x) {sum(cdc$height - x)^2/(nrow(cdc)-1) })}
png("minimizingSSR.png", width=600, height=380)
curve(f, xlims[1], xlims[2], xlab="parameter b", ylab="adjusted sum of squared residuals")
abline(v=my, col="red", lwd=0.5, lty="dotted")
text(my, f(my+sd(cdc$height)/4), substitute(bar(x)==my, list(my=my)), pos=4)
xside = my-sd(cdc$height)*0.47 * c(1,1)
yside = f(my+sd(cdc$height)*c(0.1,0.3))
arrows(xside[1], yside[1], xside[2], yside[2])
text(xside[1], mean(yside), "avg. pred. error", pos=4)
dev.off()

means = round(with(cdc, tapply(height, gender, mean)), 3)
sds =  round(with(cdc, tapply(height, gender, sd)), 3)
bvals = seq(means[1] - sds[1] * 0.3, means[1] + sds[1] * 0.3, length.out=100)
cvals = seq(means[2] - sds[2] * 0.3, means[2] + sds[2] * 0.3, length.out=100)
pairs = expand.grid(x=bvals, y=cvals)
f=function(v) { sum((cdc$height - ifelse(cdc$gender=="m", v[1], v[2]))^2)/(nrow(cdc) - 1) }
fs = apply(pairs, 1, f)

dim(fs) = c(length(bvals), length(cvals))

png("minimizingSSRfactor.png", width=600, height=380)
filled.contour(bvals, cvals, fs, nlevels=21, col = gray(seq(0.8, 0.2, length.out=20)), xlab="b (male estimate)", ylab="c (female estimate)", main="darker means more error",
plot.axes = { axis(1); axis(2); abline(v=means[1], col="red", lwd=0.5, lty="dotted"); abline(h=means[2], col="red", lwd=0.5, lty="dotted")})
dev.off()
##################################


### Residual plot
x=seq(40, 50, length.out=100)
y= x + 0.15*x*x + rnorm(length(x))
fit=lm(y~x)

png("residualPlots.png", width=800, height=380)
par(mfrow=c(1,2))
plot(y~x)
plot(resid(fit)~ x, ylab="Residual")
abline(h=0)
dev.off()

##################################


#######################    Begin evaluation file code ###############################
# Database of student evals
# Everything below works with that
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

completedLevels <- levels(testfile2[,4])
completed <- ordered(testfile2[,4], completedLevels)

testfile3 <- testfile2[,c(-2, -12, -13, -14, -15)]
deptsNumbers <- as.numeric(testfile3$dept)
jumble <- sample(1:max(deptsNumbers), max(deptsNumbers))
deptsNumbers2 <- jumble[deptsNumbers]
testfile3$dept <- deptsNumbers2
names(testfile3) <- c("deptCode", "reasonTaking", "percentCompleted", "workload", "initialInterest", "amountLearned", "relativeDifficulty", "interestInArea", "recommendCourse", "recommendInstructor")
amountLevels <- levels(testfile3$amountLearned)
amountLevels <- c("nothing", "little", "average amount", "a lot", "exceptional amount")
testfile3$amountLearned <- ordered(testfile3$amountLearned, levels=amountLevels)
testfile3$workload <- ordered(testfile3$workload, levels=c("Very light", "Light", "Moderate", "Heavy", "Very Heavy", "Unreasonable"))
testfile3$initialInterest <- ordered(testfile3$initialInterest, levels=c("Very low", "Low", "Medium", "High", "Very high"))
testfile3$relativeDifficulty <- ordered(testfile3$relativeDifficulty, levels=c("less difficult", "equally difficult", "more difficult"))
testfile3$interestInArea <- ordered(testfile3$interestInArea, levels=c("has decreased", "stayed the same", "has increased"))
levels(testfile3$recommendCourse) <- c("No", "Yes")
levels(testfile3$recommendInstructor) <- c("No", "Yes")
testfile4 <- as.data.frame(lapply(testfile3, as.numeric))
write.csv(testfile4, file="studentEvals.csv", quote=FALSE, na="", row.names=FALSE)
#######################    End evaluation file code ###############################
