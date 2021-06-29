season <- c('winter','summer','spring','summer','summer',
            'autumn','autumn','summer','spring','spring')

season
ds <- table(season)
ds

pie(ds, main = 'season', col = terrain.colors(7))

