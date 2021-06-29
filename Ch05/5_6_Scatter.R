mtcars
View(mtcars)
wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt,mpg)
plot(wt,mpg,col='red',pch=19)

ds_iris <- iris[,3:4]

group <- as.numeric(iris$Species)
group

color <- c('red','green','blue')
plot(ds_iris, pch = 16, col = color[group])
