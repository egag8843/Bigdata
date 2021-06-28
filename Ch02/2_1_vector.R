#vector - R에서 가장 많이 사용하는 자료구조,
#배열과 동일.

v1 <- c(1,2,3,4,5)
v1
v1[1]
v1[5]

v2 <- 1:5
v2
v2[1]
v2[5]

#벡터 연산
x <- 1:4
y <- 5:8

x+y

x-y

#seq() 함수로 벡터 생성
v3 <- seq(1,10,by=2)
v3

#벡터의 합과 평슌
sum_v1 <- sum(v1)
sum_v1

sum_v2 <- sum(v2)
sum_v2

mean_v1 <- mean(v1)
mean_v1

mean_v2 <- mean(v2)
mean_v2