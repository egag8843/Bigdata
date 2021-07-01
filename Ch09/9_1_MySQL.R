install.packages('RMySQL')
library(dplyr)
library(ggplot2)
library(RMySQL) 

conn <- dbConnect(MySQL(),
                  host='54.180.160.240',
                  user='egag8843',
                  password='1234',
                  dbname='egag8843')
#쿼리 실행
df_user <- dbGetQuery(conn,statement = 'SELECT * FROM member')
Encoding(df_user$pos) <- 'UTF-8'

View(df_user)

df_sale <- dbGetQuery(conn, statement = 'SELECT * FROM SALE')
View(df_sale)

#직원별 매출 그룹화
df_result <- df_sale %>% group_by(uid) %>%
              summarise(total = sum(sales)) %>%           
              arrange(desc(total))

df_result

ggplot(data=df_result, aes(x=uid, y=total))
