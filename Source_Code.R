#Histogram
?mtcars #gives details of every columns
?hist
View(mtcars)
data(mtcars)
hist(mtcars$mpg)
hist(mtcars$mpg, breaks = 5, col = "Orange", border = "Black")


#Density plot
density_data<-density(mtcars$mpg)
density_data
plot(density_data)
#add color to the plot
polygon(density_data, col = "Dark Green", border = "Red")

colors() #gives code for every color


#Line Chart
Weight<-c(2.5, 2.8, 3.2, 4.8, 5.1,5.9,6.8,7.1,7.8,8.1)
height<-c(1.6,1.8,2.0,2.1,2.2,2.4,2.5,2.7,2.8,2.9)
month<- c(0,1,2,3,4,5,6,7,8,9)
#3pch- 1-22
plot(Weight, month, type = "b", main = "Baby Chart", pch=12, col = "Purple")
lines(height, month, type= "l", pch=5, col = "Red")


#BOX PLOT
data(airquality)
View(airquality)
?airquality
#check the range of the data
sort(unique(airquality$Ozone))
boxplot(airquality$Ozone, main = "Air Quality",
        xlab="parts per billion", ylab="Ozone",
        horizontal = TRUE, col = "Orange")
boxplot(airquality$Ozone, main = "Air Quality",
        xlab="parts per billion", ylab="Ozone",
        horizontal = FALSE, col = "Orange")

summary(airquality)        
str(airquality$Ozone)
?boxplot
?str

#Heat Map
?scale
df= scale(mtcars)
View(df)
heatmap(df)
heatmap(df, scale = "column", col=rainbow(256), main = "CARS", Rowv = NA, Colv = NA)

