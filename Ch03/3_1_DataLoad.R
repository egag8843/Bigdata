#컬럼명이 없는 파일 불러오기

student <- read.table('./file/student.txt')
student

#컬럼명이 있는 파일 불러오기

student2 <- read.table('./file/student2.txt',sep=';' ,header = T)
student2

#결측지가 있는 파일 불러오기
student3 <- read.table('./file/student3.txt',na.strings = '-' ,header = F)
student3

#CVS파일 불러오기
student4 <- read.csv('./file/student4.txt',header = T,na.strings = '-')
student4

#Excel 불러오기
install.packages('readxl')
library(readxl)

student_excel <- read_excel('./file/studentexcel.xlsx')
student_excel
