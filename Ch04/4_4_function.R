# 사용자 정의 함수
f1 <- function(){
   cat("매개변수 X")
}
f1()

f3 <- function(x,y){
   add <- x+y
   return(add)
}

add <- f3(10,20)
add

#요약통계량 구하기

test <- read.csv("./Rwork/Part-I/test.csv", header = T)
head(test)

summary(test) #요약통계량

table(test$A) # 변수 빈도수

# 빈도수,최대값,최소갑 계산
data_pro <- function(x){
   for (idx in 1:length(x)){
      cat(idx,"번째 칼럼의 빈도수 분석 결과")
      print(table(x[idx]))
      cat("\n")
   }
   
   for (idx in 1:length(x)) {
         f <- table(x[idx])
         cat(idx,"번째 칼럼의 최대값/최소값\n")
         cat("max =",max(f),"min=",min(f),"\n")
   }
}
data_pro(test)

# 분산과 표준편차 구하기
x <- c(7,5,12,9,15,6)
var_sd <- function(x){
   var <- sum(x - mean(x) / 2)/(length(x) -1) #표본분산
   sd <- sqrt(var)
   cat("표본분산:",var,"\n")
   cat("표본표준편차:",sd,"\n")
}
var_sd(x)

# 피타고라스 정의 함수

p <- function(s,t){
   a <- s^2 - t^2
   b <- 2*s*t
   c <- s^2 + t^2
   cat("피타고라스 3변수:",a,b,c)
}
p(2,4)

# 구구단 출력 함수
gu <- function(i,j){
   for (x in i) {
      cat("**",x,"단 **\n")
      for (y in j) {
         cat(x," * ",y," = ", x*y,"\n")
      }
      cat("\n")
   }
}
i <- c(2:9)
j <- c(1:9)

gu(i,j)

# 결측치 포함 자료 평균구하기

#na <- function(x){
 #  print(x)
  # print(mean(x,na.rm = T))
   
#   data = ifelse(!is.na(x),x,0)
#   print(data)
#   print(mean(data))
#   
#   data2 = ifelse(!is.na(x),x,round(mean(x,na.rm = TRUE),2))
#   print(data2)
#   print(mena(data2))
#}
#na(data)

# 기술 통계량 내장 함수
seq(-2,2,by = .2)
vec <- 1:10
min(vec)
max(vec)
range(vec)
mean(vec)
median(vec)
sum(vec)
sd(rnorm(10))
table(vec)

# 정규분포 연속형의 난수 생성
n <- 1000
rnorm(n,mean = 0,sd=1)
hist(rnorm(n,mean = 0,sd = 1))

# 균등분포 난수 생성
n <- 1000
runif(n, min = 0,max = 10)
hist(runif(n,min = 0, max = 10))

#이항분포 난수 생성
n <- 20

rbinom(n,1,prob = 1/2)
rbinom(n,2,0.5)
rbinom(n,10,0.5)
n <- 1000
rbinom(n,5,prob = 1/6) #0~5사이의 이산변향 대상 1/6 확률로 n개 선정

# 종자값으로 동일한 난수 생성
rnorm(5,mean = 0,sd = 1)
set.seed(123) # 종자값을 123으로 설정
rnorm(5,mean = 0,sd = 1)
set.seed(345)

# 수학관련 내장함수

vec <- 1:10
prod(vec)# 백터의 곱
factorial(5)
abs(-5)#절대값
sqrt(16) #제곱근
cumsum(vec) #벡터값에 대한 누적 합
log(10)
log10(10)

# 행렬 연산 내장 함수
x <- matrix(1:9,nrow = 3,ncol = 3,byrow = T)
y <- matrix(1:3,nrow = 3)
ncol(x)
nrow(x)
t(x)
cbind(x,1:3)# x에 열추가
###########
rbind(x,10:12) # x에 행추가
diag(x) #정방행렬 x에서 대각선 값 반환
det(x) 
apply(x, 1, sum)#x의 행 단위 합계계
apply(x,2,mean)# x의 열 단위 평균균
svd(x) # 정방행렬 x에서 d,,u,v 행렬로 특이값 분해
eigen(x) # 정방행렬 x에서 고유값 분해해
x %*% y

# 집합관련 내장함수 사용

x<-c(1,3,5,7,9)
y <- c(3,7)

union(x,y) # 합집합
setequal(x,y) # 동일성 검사사
intersect(x,y) #교집합합
setdiff(x,y) #차집합합
setdiff(y,x) #차집합합
5 %in% y # 5가 y의 원소인지 검사사
