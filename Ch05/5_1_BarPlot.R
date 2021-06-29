#기본 막대차트
count <- c(1,2,3,4,5)
barplot(count)

score <- c(80,72,60,78,82)
names(score) <- c('김유신','김춘추','장보고','감감찬','이순신')
barplot(score)

#범주형 막대차트
season <- c('winter','summer','spring','summer','summer',
            'autumn','autumn','summer','spring','spring')

season
ds <- table(season)
ds
barplot(ds, main = 'season')
barplot(ds, main = 'season',col = c('blue','red','green','yellow'))
barplot(ds, main = 'season',col = rainbow(4))
barplot(ds, main = 'season',col = heat.colors(4))
barplot(ds, main = 'season',col = terrain.colors(4))

barplot(ds, main = 'season',col = rainbow(4),
                           xlab='계절',
                           ylab="빈도수",
                           horiz = T)


#누적 막대차트
df_sample <- read.csv('./file/sample_population.csv')
df_sample

View(df_sample)
matrix_sample <-as.matrix(df_sample)


barplot(matrix_sample)
barplot(matrix_sample, col = rainbow(3)
        ,beside = T
        ,legend.text = c('0~14세','15~64세','65세 이상'))
