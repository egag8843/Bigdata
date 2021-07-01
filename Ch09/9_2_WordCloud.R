# 정형 및 비정형 데이터 처리 - 텍스트 시각화

install.packages('https://ftp.harukasan.org/CRAN/bin/windows/contrib/3.4/KoNLP_0.80.1.zip',repos=NULL)
library('Sejong')
install.packages('dplyr')
install.packages('stringr')
install.packages('wordcloud')
install.packages('Sejong')
install.packages('rJava')
install.packages('tau')
install.packages('devtools')
install.packages('memoise')
install.packages('RSQLite')

library(KoNLP)
library(dplyr)
library(stringr)
library(wordcloud)

#텍스트 데이터 불러오기
txt_data <- readLines('file/wordcloud_data.txt',encoding = 'UTF-8')
txt_data

#명사 추출
txt_noun <- extractNoun(txt_data)
txt_noun

txt_noun_count<-table(unlist(txt_noun))
txt_noun_count

#데어티프레임 변환
df_txt<-as.data.frame(txt_noun_count, stringsAsFactors = F)
df_txt
View(df_txt)

#단어구름 시각화
wordcloud(words = df_txt$Var1,
          freq = df_txt$Freq,
          min.freq = 5,
          max.words = 1000,
          random.order = F,
          rot.per = 0.1,
          scale = c(4,0.3),
          colors = brewer.pal(12,"Paired"))
