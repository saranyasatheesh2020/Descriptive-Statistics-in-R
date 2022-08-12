
#Earthquake Dataset
e_quakes<-datasets::quakes

head(e_quakes,10)
tail(e_quakes,10)

summary(e_quakes)

#Variance
var(e_quakes)
var(e_quakes$lat)
var(e_quakes$long)
var(e_quakes$depth)
var(e_quakes$mag)
var(e_quakes$stations)

##To find skewness and kurtosis we need to import a package called moments.

#import package moments
install.packages("moments")
library(moments)

#Skewness
skewness(e_quakes)
skewness(e_quakes$lat)

#Kurtosis
kurtosis(e_quakes)
kurtosis(e_quakes$lat)

#Density Plot

#Plot the density without histogram
plot(density(e_quakes$lat),  main = "Density Plot")
plot(density(e_quakes$long),  main = "Density Plot")
plot(density(e_quakes$depth),  main = "Density Plot")
plot(density(e_quakes$mag),  main = "Density Plot")
plot(density(e_quakes$stations),  main = "Density Plot")

##Plot the density with histogram
hist(e_quakes$lat)
#or
hist(e_quakes$lat, freq = FALSE, main = "Histogram and density")

lines(density(e_quakes$lat),lwd = 2, col = "red")

#Line Chart
plot(e_quakes$lat, type="l", main='Line Chart')

#Scatter Plot
plot(x=e_quakes$lat,y=e_quakes$long,main='Scatter Plot', xlab='LAT',ylab='LONG')

#Scatter Matrix
plot(e_quakes)

#Bar Plot
barplot(e_quakes$lat, main='BAR PLOT', xlab = 'LAT')

#Box Plot
boxplot(e_quakes, main='BOX PLOT')
boxplot.stats(e_quakes$lat)$out
boxplot.stats(e_quakes$long)$out
boxplot.stats(e_quakes$depth)$out
boxplot.stats(e_quakes$mag)$out
boxplot.stats(e_quakes$stations)$out

#Here all columns except depth column has outliers