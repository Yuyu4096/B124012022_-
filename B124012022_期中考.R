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



