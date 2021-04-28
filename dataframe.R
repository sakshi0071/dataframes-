b<- c(1.23, 2.34, 4.87, 21.1)
as.data.frame(b)
b<- as.data.frame(b)
str(b)
class(b)

# changing rownames & column names
rownames(b)
colnames(b)
rownames(b) <- c("sample_1","sample_2","sample_3","sample_4")
b

colnames(b) <- "B" #to name corrections
colnames=NULL # to delete
remove(colnames)
b

# 
b$B # each of the column can be used to represent by a $ sign
b$B*2 # multiply by 2
sum(b$B)

# adding more data
b$D <- c(8.45,6.15, 15.47, 54.1)
b

b$F <- b$B + b$D # adding more data
b
b$D*100 # adding more data
b$D^2 # adding more data
b
str(b)
class(b)

# different way
G <- c(78.03, 54.8, 98.1, 0.2)
cbind(b,G) 
b <- cbind(b,G)
b # to make permanent

# adding extra rows
rbind(b, c(G <- c(78.03, 54.8, 98.1, 0.2)))
b
b <- rbind(b, c(78.03, 54.8, 98.1, 0.2))
b


# adding new columns
rownames(b)[5] <- "Sample_5"
b


# transpose
t(b) # whole data is transposed


# to find number of rows
nrow(b)

# to find number of colums
ncol(b)

# to find both rows and colums
dim(b)

# row means
rowMeans(b)
colMeans(b)
rowSums(b)
summary(b)
summary(c(1,10,100))

# 
mean(b) # this command doesnt works
mean(as.matrix(b))
as.matrix(b)
str(as.matrix(b))
str(b) # to check the difference
class(as.matrix(b))

# dot plot
plot(1:5)
plot(b$B)

# line diangram
plot(b$B, type = "l")
plot(b$B, type = "b")

# scatter plot
plot(b$B, b$D)
plot(b$B, b$D, pch=19)
points(b$B, b$F, col="red", pch=19)

mtext("B vs D in black and B vs F in red")

# barplot
barplot(b$B)
barplot(b$B, names.arg = rownames(b))
barplot(b$B, names.arg = rownames(b), horiz = TRUE, las=2, xlab = "Elapsed time (s)", main = "Time trial")

# Sampling randomly from a distribution
rnorm(1000, mean=10, sd=20)
d <- rnorm(1000, mean=10, sd=20)

# histogram
hist(d)
e <- rmorm(100, mean=10, sd=50)
hist(e)
d
e

# boxplot
boxplot(d)
boxplot(d, e)
boxplot(d,e, names = c("d", "e"), ylab="Elapsed Time(s)", main="Time Trail")

# can be saved as a pdf
pdf("myplots.pdf")
hist(d)
hist(e)
boxplot(d,e)
dev.off() # closing the pdf

# Factors

g<-c("M","M","F","F","M")
g
g<-as.factors(c("M","M","F","F","M"))
str(g)

# 
f<-factor(c("early","late","ontime","early","late","ontime","early"),
          levels = c("early", "ontime", "late"), ordered = TRUE) 
f

# how data is stored internally
as.character(f)
as.numeric(f)

# str tells us structure of data
str(f)

