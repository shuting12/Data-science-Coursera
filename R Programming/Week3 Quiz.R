rm(list=ls())
#Q1 answer
library(datasets)
data(iris)
?iris
iris$Species
lapply(split(iris$Sepal.Length, iris$Species), mean)
# Q2, 2 means the column, 1 means rows
apply(iris[,1:4],2,mean)

#Q3 
library(datasets)
data(mtcars)
?mtcars
View(mtcar)

sapply(split(mtcars$mpg,mtcars$cyl),mean)#right answer
tapply(mtcars$cyl,mtcars$mpg,mean)
sapply(mtcars, cyl,mean) #wrong with error
tapply(mtcars$mpg,mtcars$cyl,mean)# right answer, same as number 1
apply(mtcars,2,mean)
lapply(mtcars,mean)
mean(mtcars$mpg,mtcars$cyl)#occur with error
with(mtcars,tapply(mpg,cyl,mean)) #right answer
split(mtcars,mtcars$cyl)

#Q4
tapply(mtcars$hp,mtcars$cyl,mean)

#Q5
debug(ls)
ls
