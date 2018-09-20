library(ggplot2)
data <- read.csv('Desktop/GC-R53-9.csv',header = T,sep = ',')
len <- length(data[,1])
# 0 nM
a_mean <- apply(data.frame(data[,2:4]),1,mean)
a_sd <- apply(data.frame(data[,2:4]),1,sd)
a <- data.frame(data[,1],a_mean,a_sd,rep('0nM',len))
names(a) <- c('time','mean','sd','concentration')
# 10 nM
b_mean <- apply(data.frame(data[,5:7]),1,mean)
b_sd <- apply(data.frame(data[,5:7]),1,sd)
b <- data.frame(data[,1],b_mean,b_sd,rep('10nM',len))
names(b) <- c('time','mean','sd','concentration')
# 20 nM
c_mean <- apply(data.frame(data[,8:10]),1,mean)
c_sd <- apply(data.frame(data[,8:10]),1,sd)
c <- data.frame(data[,1],c_mean,c_sd,rep('20nM',len))
names(c) <- c('time','mean','sd','concentration')
# 30 nM
d_mean <- apply(data.frame(data[,11:13]),1,mean)
d_sd <- apply(data.frame(data[,11:13]),1,sd)
d <- data.frame(data[,1],d_mean,d_sd,rep('30nM',len))
names(d) <- c('time','mean','sd','concentration')
finaldata <- rbind(a,b,c,d)

p <- ggplot(data=finaldata,mapping = aes(x=time,y=mean,colour=concentration)) + geom_point() + 
  geom_errorbar(aes(ymin=mean-sd, ymax=mean+sd), width=1) + theme_bw() +
  labs(x='time/h',y='confluence/%',title='Enzalutamide on R53-9 Line')
p