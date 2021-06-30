#결측치 실습

library('dplyr')

df= read.csv('file/exam_na.csv')
View(df)

#결측치를 갖는 행을 제거
df_new <-df %>% filter(!is.na(math) & !is.na(english) & !is.na(science))
df
df_new

df_new %>%  mutate(total=english+math+science, mean= total/3) %>% arrange(desc(total))
