# 1. exam.csv 파일을 데이터프레임 출력
df_exam <- read.csv('file/exam.csv')
View(df_exam)

# 2. math, english, science 변수만 갖는 데이터프레임 출력
library(dplyr)
df2 <- df_exam %>% select(math, english, science)
View(df2)

# 3. class가 1인 모든 변수를 갖는 데이터프레임 출력
df3 <- df_exam %>% filter(class == 1)
View(df3)

# 4. math 가 60점 이상이고 80점 미만 데이터프레임 출력
df4 <- df_exam %>% filter(math >=60 & math < 80)
View(df4)

# 5. english가 60점 이상이고 80점 미만 데이터프레임 출력
df5 <- df_exam %>% filter(english >= 60 & english < 80)
View(df5)

# 6. math가 60점 이상이고 점수가 높은 순서를 갖는 class,id,math 갖는 데이터프레임 출력
df6 <- df_exam %>% filter(math >= 60) %>% 
       select(class, id, math) %>% 
       arrange(math) %>% head(3)
View(df6)

# 7. class로 그룹화 되고 수학점수 평균(mean_math) 변수를 갖는 데이터프레임 출력
df7 <- df_exam %>% group_by(class) %>% summarise(mean_math = mean(math))
View(df7)

# 8. total(math, english, science의 합) 파생변수를 갖는 데이터프레임 출력
df8 <- df_exam %>% mutate(total = math + english + science)
View(df8)

# 9. mean(math, english, science의 합의 평균) 파생변수를 갖는 데이터프레임 출력
df9 <- df_exam %>% mutate(mean = (math + english + science) / 3)
View(df9)

# 10. grade(평균의 등급 A,B,C,D,F) 파생변수를 갖는 데이터프레임 출력
df10 <- df9 %>% mutate(grade = ifelse(mean >= 90, 'A',
                               ifelse(mean >= 80, 'B',
                               ifelse(mean >= 70, 'C',
                               ifelse(mean >= 60, 'D', 'F')))))
View(df10)
