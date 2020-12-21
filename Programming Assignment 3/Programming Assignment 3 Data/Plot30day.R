
#set directory
setwd("C:/Users/Matthew.Clark2/Desktop/Data Scientists Specilization/R Programming course/Programming Assignment 3 Data")

#view files in directory
dir()

#Plot 30 day mortality rates for heart attacks

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)

#number of columns in outcome (46)
ncol(outcome)
#numbe rof rows in outcome (4706)
nrow(outcome)
#names of each column
names(outcome)

#simple histogram of the 30-day death rates from heart attack for c11
outcome[, 11] <- as.numeric(outcome[, 11])
## You may get a warning about NAs being introduced; that is okay
hist(outcome[, 11])