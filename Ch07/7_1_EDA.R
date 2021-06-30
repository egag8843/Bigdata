# EDA : 데이터를 분석하기 위한 기초적인 분석 단계
df_exam <- read.csv("file/exam.csv")
View(df_exam)

head(df_exam)
tail(df_exam)

dim(df_exam) # 데이터프레임 구조 확인

str(df_exam) # 속성 확인

summary(df_exam) #요약 통계

sum(df_exam$math) #특정 컬럼 합

mean(df_exam$english) # 평균 확인
