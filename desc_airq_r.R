#Inbuilt Dataset AIRQUALITY
airquality<- datasets::airquality

#Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

#Columns
airquality[50:60,c(1,2)]

#remove the 6th column (Target column)
df<-airquality[,-6]

#Descriptive Statistics

#For every rows and 4th and 5th column
summary(airquality[,c(4,5)])
#For every rows and 1st,2nd and 3rd column
summary(airquality[,c(1,2,3)])
#Only for the wind column
summary(airquality$Wind)
#For all columns
summary(airquality)
#Only for the first column
summary(airquality$Ozone)

#Vizualization

#scatter plot for wind column
plot(airquality$Wind)

#Scatter plot - temp on x axis and ozone on y axis
plot(airquality$Temp,airquality$Ozone,type="p")

#scatter Matrix
plot(airquality)

#Line Chart
plot(airquality$Wind, type="l") #p:point, l:lines, b:both (line and scatter matrix)
plot(airquality$Wind, type="b")
plot(airquality$Wind, xlab='Ozone Concentartion', ylab='No of instances', main = 'Ozone levels in NY City',col='blue', type="l")

#Horizontal Bar Plot
barplot(airquality$Ozone, main='Ozone concenration in air', ylab='ozone levels', col='blue', horiz=F, axes=T)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp, main='Solar Radiation values in air',
     xlab='Solar red', col='blue')

#Single box plot
boxplot(airquality$Wind,main='BoxPlot')
#give 3 points have outliers
boxplot.stats(airquality$Wind)$out

#Multiple Box plots
boxplot(airquality[,1:4],main='Multiple')
#Find Outliers
boxplot.stats(airquality$Ozone)$out
boxplot.stats(airquality$Solar.R)$out
boxplot.stats(airquality$Wind)$out
boxplot.stats(airquality$Temp)$out
boxplot.stats(airquality$Month)$out
boxplot.stats(airquality$Day)$out

#Here ozone and wind has outliers.

par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty='o')

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
barplot(airquality$Ozone, main='Ozone Concentration in air',
        xlab='ozone levels', col='green', horiz=TRUE)
hist(airquality$Solar.R)
boxplot(airquality[,0:4],main='Multiple Box Plots')

summary(airquality)
