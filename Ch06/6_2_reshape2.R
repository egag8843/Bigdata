install.packages("reshape2")
data <-read.csv("Rwork/Part-II/data.csv")
data

library(reshape2)
#wide format

wide <- dcast(data, Customer_ID ~ Date, sum)
wide

#파일 저장 및 읽기
write.csv(wide, "wide.csv",row.names = F)

wide <- read.csv("wide.csv")
wide

# 긴 형식으로 변경
long <- melt(wide, id = "Customer_ID")
long

#smiths 데이터셋
data("smiths")
smiths

long <- melt(id = 1:2,smiths)
long

