install.packages('dplyr')
library(dplyr)
df_exam=read.csv('./file/exam.csv')

df_exam
View(df_exam)

#select
df_math<-df_exam %>% select(math)
df_eng<-df_exam %>% select(english)
df_rs1 <- df_exam %>% select(math, science)
df_rs2 <- df_exam %>% select(everything())

df_math
df_eng
df_rs1
df_rs2

#filter (select 전에 와야 함)
df_class1 <- df_exam %>% select(everything()) %>% filter(class==1)
df_class1

df_engs1 <- df_exam %>% select(english) %>% filter(english >= 60 & english <= 80)
df_engs1

df_sc <- df_exam %>% select(science) %>%  filter(science >= 60 & science <= 80)
df_sc

df_res2 <- df_exam %>% filter(math >60 & math < 80)
df_res2

df_math_asc <- df_exam %>% arrange(math)
df_math_asc

df_math_desc <- df_exam %>% arrange(desc(math))
df_math_desc

df_2 <- df_exam %>% 
         filter(math >= 60) %>%  
         select(class,id,math) %>% 
         arrange(desc(math)) %>% 
         head(3)
df_2
#mutate

df_total <- df_exam %>% mutate(total = math+english+science)
df_total

df_mean <- df_total %>% mutate(mean = total / 3)
df_mean

df_grade <- df_mean %>% mutate(grade = ifelse(mean >= 90, 'A',
                                       ifelse(mean >= 80, 'B',
                                       ifelse(mean >= 70, 'C',
                                       ifelse(mean >= 60, 'D', 'F')))))
df_grade

#summarize
df_exam %>% summarise(mean_math = mean(math))
df_exam %>% summarise(sum_math = sum(math))

#group_by
df_group1 <- df_exam %>% group_by(class) %>% summarise(sum_math = sum(math))
df_group2 <- df_exam %>% group_by(class) %>% summarise(mean_math = mean(math))

df_group1
df_group2

#inner_join 

df_teacher <- data.frame(class = c(1,2,3,4,5),
                         teacher = c('이순신','김유신','강감찬','장보고','이순신'))

df_join <- inner_join(df_exam, df_teacher, by='class')
df_join

# iris %>% 

iris %>% head()
iris %>% head() %>% subset(Sepal.Length >=5)

#hflight 설치
install.packages('hflights')
library(hflights)

str(hflights)

hf_df <- tbl_df(hflights)
hf_df

filter(hf_df, Month ==1 & DayofMonth ==2)
filter(hf_df, Month ==1 | DayofMonth ==2)

arrange(hf_df, Year, Month, DepTime,ArrTime)
select(hf_df, Year, Month, DepTime, ArrTime)

mutate(hf_df, gain=ArrDelay - DepDelay, gain_pre_hour = gain/(AirTime/60))

summarise(hf_df,cnt=n(),delay=mean(AirTime,na.rm=T)) # 관측치 길이 구하기
summarise(hf_df,arrTimeSd = sd(ArrTime,na.rm = T),
         arrTimeVar = var(ArrTime,na.rm = T))#표준편차와 분산 계산산

# 집단변수 그룹화

species <- group_by(iris,Species)
str(species)

#데이터프레임 행 단위 합치기
df1 <- data.frame(x = 1:5, y=rnorm(5))
df2 <- data.frame(x = 6:10, y=rnorm(5))

df_rows <- bind_rows(df1,df2)
df_rows

#데이터프레임 열 단위 합치기
df_cols <- bind_cols(df1,df2)
df_cols

#데이터프레임 칼럼명 수정
df_rename <- rename(df_cols,x2 = x1)
