# 1.  Create a vector that contains 20 numbers. (You may choose 
#     whatever numbers you like, but make sure there are some duplicates.)

# Retuns the vector 2 4 6 8 10 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
vector.1 <- c(seq(from=2, to=10, by=2), seq(from=1, to=15, by=1))

# 2.  Use R to convert the vector from question 1 into a character 
#     vector.

char.vector <- as.character(vector.1)

# 3.  Use R to convert the vector from question 1 into a vector of 
#     factors.

factor.vector <- as.factor(vector.1)

# 4.  Use R to show how many levels the vector in the previous question
#     has.

levels(factor.vector)

# 5.  Use R to create a vector that takes the vector from question 1
#     and performs on it the formula 3𝑥2 − 4𝑥 + 1.

poly.vector <- 3*vector.1^2 - 4*vector.1 + 1

# 6.  Create a named list. That is, create a list with several elements
#     that are each able to be referenced by name.

named.list <- list(odds=c(1,3,5,7,9), evens=c(0,2,4,6,8), primes=c(2,3,5,7))

# 7.  Create a data frame with four columns – one each character, factor (with three levels), numeric, and date. 
#     Your data frame should have at least 10 observations (rows).

person.name <- c("John", "Steve", "Mary", "Rachel", "David", "Juan", "Alfonso", "Tollevin", "Reuben", "Sam")
age.group <- factor(c("infant", "youth", "youth", "adult", "infant", "adult", "youth", "adult", "adult", "adult"))
years.old <- c(1, 12, 16, 45, 2, 21, 8, 29, 29, 27)
birth.date <- as.Date(c("2013-09-01", "2002-07-23", "1998-01-02", "1969-04-15", "2011-10-03", 
                        "1993-06-08", "2006-02-03", "1985-04-11", "1985-03-10", "1987-05-02"))
people.data <- data.frame(person.name, age.group, years.old, birth.date)

# 8.  Illustrate how to add a row with a value for the factor column
#     that isn’t already in the list of levels. (Note: You do not need
#     to accomplish this with a single line of code.)

# We can use rbind, which automatically expands levels as necessary.
# Note: column names must match in each data frame
new.row <- data.frame(person.name="Ron", age.group=factor("senior"), 
                      years.old=70, birth.date=as.Date("1970-06-02"))
all.data <- rbind(people.data, new.row)

# 9.  Show the code that would read in a CSV file called 
#     temperatures.csv from the current working directory.

temperatures <- read.csv(file="temperatures.csv", sep=",", header=TRUE)

# 10. Show the code that would read in a TSV (tab-separated) file 
#     called measurements.txt from a directory other than the working
#     directory on your local machine.

measurements <- read.table(file="/Users/kiwi/documents/measurements.txt",
                           sep="\t", header=TRUE)

# 11. Show the code that will read in a delimited file with a pipe separator (the “|” symbol) from a website 
#     location. (You may make up an appropriate URL.)

pipe.delimited <- read.table(file="http://www.fake-url.com/files/pipe-delimited-file-noheader.txt",
                             sep="|", header=FALSE)