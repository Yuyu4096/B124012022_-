#Yuyu4096

rm(list = ls())
setwd('C:/Users/willi/OneDrive/桌面/R語言/期中考/')
Mobiles <-  read.csv('Mobiles.csv',header=TRUE)
install.packages('ggplot2')
install.packages('corrplot')
library(corrplot)
library(ggplot2)
library(dplyr)


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
g3 <- ggplot(Mobiles, aes(x=Weight, y=Battery))
g3_2 <- g3+geom_point(aes(col=Company),size=1.5,pch=11)+
  ggtitle('Weight vs. Battery', subtitle = 'Mobiles')+
  xlab('Weight')+ylab('Battery')+
  scale_colour_brewer(palette = "BrBG")

#4
run <- aov(PriceUSA~factor(Company),data=Mobiles)
summary(run)
TukeyHSD(run)
leveneTest(PriceUSA~factor(Company),data=Mobiles)

#5
run2 <- aov(Weight~factor(Company),data=Mobiles)
summary(run2)
TukeyHSD(run2)

#6
run3 <- aov(Weight~factor(Company)+factor(Battery),data=Mobiles)
summary(run3)
TukeyHSD(run3)

#7
Apple_2024 <- subset(Apple, Year=='2024')
Mobiles_2024 <- subset(Mobiles, Year=='2024')

TotalMobiles_2024 <- nrow(Mobiles_2024)
TotalApple_2024 <- nrow(Apple_2024)
ratio <- (TotalApple_2024/TotalMobiles_2024)*100 #12%

#8

