# Create Random Data

dataf<- seq(1,20,by=1)
dataf
mean(dataf)
sd(dataf)
a<- t.test(dataf,alternative = "two.sided", mu =10, confint=.95)
a
a$p.value
a$statistic
(10.5-10)/(sd(dataf)/sqrt(length(dataf)))
length(dataf)=1
length(dataf)
dataf
dataf<- seq(1,20,by=1)
length(dataf)-1
