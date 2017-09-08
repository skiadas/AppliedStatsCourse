library(lattice)
cars04 <- read.csv("../site/datasets/04cars.dat", na.strings="-1")
png("hw2CityMileage.png", width=300, height=220)
histogram(cars04$CMpG, breaks=30, xlab="City Mileage (mpg)", type="count")
dev.off()
png("hw2EngineSize.png", width=300, height=220)
histogram(cars04$Eng, breaks=20, xlab="Engine Size (lt)", type="count")
dev.off()
png("hw2CarWeight.png", width=300, height=220)
histogram(cars04$Weight, breaks=20, xlab="Car Weight (pounds)", type="count")
dev.off()
anorexia <- read.csv("../site/datasets/anorexia.dat")
png("hw2anorexia.png", width=300, height=220)
histogram(anorexia$after-anorexia$before, breaks=20, xlab="Weight gain (pounds)", type="count")
dev.off()
iris <- read.csv("../site/datasets/iris.txt")
png("hw2iris.png", width=300, height=220)
histogram(iris$Petal.Length, breaks=20, xlab="Petal Length (cm)", type="count")
dev.off()
television <- read.table("../site/datasets/television.dat", header=TRUE)
png("hw2life.png", width=300, height=220)
histogram(television$FemLE, breaks=20, xlab="Female Life Expectancy", type="count")
dev.off()
voting <- read.table("../site/datasets/voting.txt", header=TRUE)
png("hw2dem1984.png", width=300, height=220)
histogram(voting$Dem1984, breaks=10, xlab="Democrat percent per state (1984)", type="count")
dev.off()
png("hw2dem1980.png", width=300, height=220)
histogram(voting$Dem1980, breaks=15, xlab="Democrat percent per state (1980)", type="count")
dev.off()
