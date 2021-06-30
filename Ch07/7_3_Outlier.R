# 이상치(극단치) 실습

library(dplyr)

#이상치 데이터프레임 불러오기
df <- read.csv('file/exam_outlier.csv')
df

#이상치를 결측치로 수정
df$math <-ifelse(df$math>100 | df$math < 0 ,NA, df$math)
df$english <-ifelse(df$english>100 | df$english < 0 ,NA, df$english)
df$science <-ifelse(df$science>100 | df$science < 0 ,NA, df$science)
df
