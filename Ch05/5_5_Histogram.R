dist <- cars[,2]
dist

hist(dist)

# iris 데이터 히스토그램
hist(iris$Sepal.Width, xlim = c(2.0,4.5),
     xlab = "꽃받침 너비",
     main= "꽃받침 너비 분포도")
