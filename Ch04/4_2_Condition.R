# p110 if 

x <- 50; y<- 4; z<- x*y
if(x * y >= 40){
   cat("x * y의 결과는 40 이상입니다.\n")
} else{
   cat("x * y의 결과는 40 미만입니다. x * y = ",z,"\n")
}

score <- scan()

score

result <- "노력"
if(score >= 80){
   result <- "우수"
}
cat("당신의 학점은",result.score)

######

if(score >= 90){
   result="A"
}else if(score >=80){
   result="B"
}else if(score >=70){
   result="C"
}else if(score >=60){
   result="D"
}else{
   result="F"
}

########### if else 논리 연산########

excel <- read.csv("./Rwork-2nd/Part-1/excel.csv", header = T)
q1 <- excel$q1
q1
q1
ifelse(q1 >= 2 & q1 <= 4, q1^2, q1)

########## swithc() #############

switch('name',id='hong',pwd='1234',age=105,name='홍길동')

switch (empname,
   hong = 250,
   lee = 350,
   kim = 200,
   kang = 400
)

######### 벡터에서 위치 사용#########
no <- c(1:5)
name <- c('홍길동','이순신','강감찬','유관순','김유신')
score <- c(85,78,89,90,74)
exam <- data.frame(학번 = no, 이름 = name, 성적 = score)
exam

which(exam$이름 =='유관순')
exam[4,]
