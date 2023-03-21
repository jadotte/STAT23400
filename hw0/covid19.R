# time series covid-19 data

# set up your working directory
mywd = "~/Dropbox/macbookpro/UChicago/StatCourses/2020_Q3Spring/Stat234_fei/lectures/L01"
setwd(mywd);

mydata = read.table("./Data/covid19.txt", header=T, sep=",");

# plot the time series of US data
USdata = mydata[mydata$Country.Region=="US", ];
  
# check USdata, load R library
# may need to install package "dplyr" by install.packages("dplyr")
library(dplyr)
glimpse(USdata)

# or check the first few lines of data using the 'head' function
head(USdata)

# specify pdf file names to save the plot
pdf("covid19.pdf", width=5,height=6)
∫
# plot the cases (in variable Value) by Date
plot(as.Date(USdata$Date), USdata$Value, xlab="Date", ylab="Num of Cases", main="Num of Covid-19 Cases in US", cex.lab=1.5)

# close the printing device
dev.off()

