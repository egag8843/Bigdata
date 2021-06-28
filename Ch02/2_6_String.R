install.packages('stringr')

#R 패키지 로드
library(stringr)

#문자열
str <- 'Hello R'
str

#문자열 길이
str_length(str)

#문자자열 자르기
str_sub(str,1,5)
