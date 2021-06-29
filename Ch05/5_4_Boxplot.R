#박스상자 기본
View(cars)

dist = cars[,2]
dist

boxplot(dist,main="자동차 제동거리")

# iris data
iris
boxplot(data=iris, Sepal.Length ~ Species )
