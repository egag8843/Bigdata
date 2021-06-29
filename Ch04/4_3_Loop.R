# p115 실습

i <- c(1:10)
for(n in i){
   print( n*10 )
   print(n)
}
####

# 짝수 값 출력
i <- c(1:10)
for (n in i) {
   if(n %% 2 == 0) print(n)
}

# 홀수 값 출력
i <- c(1:10)
for (n in i) {
   if(n%%2==0){
      next
   }else{
      print(n)
   }
}

# 변수 칼럼명 출력

name <- c(names(exam))
for (n in name) {
   print(n)
}

# 벡터데이터 사용

score <- c(85,95,98)
name <- c("홍길동","이순신","강감찬")
i<-1
for (s in score) {
   cat(name[i]," -> ",s,"\n")
   i <- i+1
}

# while 사용
i = 0
while(i<10){
   i <- i+1
   print(i)
}