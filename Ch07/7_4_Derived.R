#파생변수 실습

df <- read.csv('file/exam.csv')
df

df$total <- df$math + df$english +df$science
View(df)

df$mean <- df$total /3
df

df$grade <- ifelse(df$mean>=90 , 'A' ,
            ifelse(df$mean>=80, 'B' ,
            ifelse(df$mean>=70, 'C' ,
            ifelse(df$mena>=60, 'D' ,
            'f'))))

df            
