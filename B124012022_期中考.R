#Yuyu4096

rm(list = ls())
setwd('C:/Users/willi/OneDrive/桌面/R語言/期中考/')
Mobiles <-  read.csv('Mobiles.csv',header=TRUE)
install.packages('ggplot2')
install.packages('corrplot')
library(corrplot)
library(ggplot2)


#1
Samsung <- subset(Mobiles, Company=='Samsung')
Apple <- subset(Mobiles, Company=='Apple')
median(Samsung$PriceUSA);median(Apple$PriceUSA) # 699;999
sd(Samsung$PriceUSA);sd(Apple$PriceUSA) # 515.3826;247.8969

#2
graph1 <- boxplot(PriceChina~Year , data = Mobiles,
                  xlab = '年份',
                  ylab = '中國售價',
                  main='年份-中國售價的盒鬚圖');graph1

graph2 <- hist(Mobiles$PriceChina,
               main = '中國售價的長條圖',
               xlab='中國售價',
               ylab='數量',
               col = 'gold',
               breaks=100);graph2

#3

