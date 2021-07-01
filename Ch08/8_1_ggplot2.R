# ggplot2 패키지 실습

install.packages('ggplot2')
library(ggplot2)
#################################
######## 막대차트
#################################
mtcars
mtcars_table<-table(mtcars$cyl)
mtcars_table

# R 기본 막대차트
barplot(mtcars_table)

# ggplot2 막대차트 - 옵션이 더 많음.
qplot(data = mtcars, x= cyl, geom = 'bar')
ggplot(mtcars, aes(x=cyl)) + geom_bar()

#################################
######## 라인차트
#################################
View(economics)
# R 기본 라인 차트
plot(economics$date, economics$unemploy, type='l')

#ggplot2 라인차트
qplot(data = economics, x = date, y=unemploy, geom="line")

#################################
######## 박스차트
#################################
mpg

# R 기본 박스상자
boxplot(mpg$hwy ~mpg$drv)

#ggplot2 박스상자
qplot(data=mpg, x=drv, y=hwy, geom="boxplot")
ggplot(data=mpg, aes(x=drv, y=hwy)) + geom_boxplot()

#################################
######## 히스토그램
#################################

# R 기본 히스토그램
hist(iris$Sepal.Length)

# ggplot2 히스토그램
qplot(data=iris, x= Sepal.Width, geom="histogram")
ggplot(data=iris, aes(x=Sepal.Width)) + geom_histogram()

#################################
######## 산정도
#################################

# R 기본 산정도
plot(iris[,3:4], pch=16, col=iris$Species)

# ggplot2 산정도
qplot(data=iris,
      x=Petal.Length,
      y=Petal.Width,
      color=Species,
      geom='point')

ggplot(data=iris,
       aes(x=Petal.Length,
           y=Petal.Width, color=Species))+geom_point()
