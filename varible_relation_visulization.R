data <- read.csv("C:/Users/ThinkPad/Documents/dataproject/worker_productivity.csv")

plot(data[["targeted_productivity"]],
     data[["actual_productivity"]],
     main="Productivity Index vs. Targeted Productivity",
     ylab="Productivity Index",
     xlab="targeted_productivity")

print(data$day[1])
for (i in 1:length(data$day)){
  if(data$day[i]=="Monday"){data$day[i]<-1}
  else if(data$day[i]=="Tuesday"){data$day[i]<-2}
  else if(data$day[i]=="Wednesday"){data$day[i]<-3}
  else if(data$day[i]=="Thursday"){data$day[i]<-4}
  else if(data$day[i]=="Friday"){data$day[i]<-5}
  else if(data$day[i]=="Saturday"){data$day[i]<-6}
  else if(data$day[i]=="Sunday"){data$day[i]<-7}
}


plot(data[["day"]],
     data[["actual_productivity"]],
     main="Productivity index vs. Day of Week",
     ylab="Productivity Index",
     xlab="Day of Week")
print(data$department[2])
for (j in 1:length(data$department)){
  if(data$department[j]=="sweing"){data$department[j]<-1}
  else if(data$department[j]=="finishing "){data$department[j]<-2}
  }
plot(data[["department"]],
     data[["actual_productivity"]],
     main="Productivity index vs. Department ",
     ylab="Productivity Index",
     xlab="Department (1 for sweing, 2 for finishing)",
     xaxt="n")
xtick<-seq(1,2,by=1)
axis(side=1, at=xtick, labels = FALSE)
text(x=xtick,  par("usr")[3], 
     labels = xtick, srt = 0, pos = 1, xpd = TRUE)
sweing<-subset(data$actual_productivity,data$department==1)
finishing<-subset(data$actual_productivity,data$department==2)
par(mfrow = c(1, 2))

hist(sweing,main = "Sweing Actual Productivity")
hist(finishing,main = "Finishing Actual Productivity")

# Reset the graphics parameters to their default values
par(mfrow = c(1, 1))

plot(data[["team"]],
     data[["actual_productivity"]],
     main="Productivity Index vs. Team",
     ylab="Productivity Index",
     xlab="Team Number")

plot(data[["smv"]],
     data[["actual_productivity"]],
     main="Productivity Index vs. SMV",
     ylab="Productivity Index",
     xlab="SMV Minute For Task")
plot(data[["wip"]],
     data[["actual_productivity"]],
     main="Productivity Index vs. wip",
     ylab="Productivity Index",
     xlab="Number of work in progress")
plot(data[["over_time"]],
     data[["actual_productivity"]],
     main="Productivity Index vs. Over Time",
     ylab="Productivity Index",
     xlab="Over Time in Minute")
plot(data[["incentive"]],
     data[["actual_productivity"]],
     main="Productivity Index vs. incentive",
     ylab="Productivity Index",
     xlab="Finacial Incentive in BDT")
plot(data[["idle_time"]],
     data[["actual_productivity"]],
     main="Productivity Index vs. idle_time",
     ylab="Productivity Index",
     xlab="Amount of time when production was interrupted")
plot(data[["idle_men"]],
     data[["actual_productivity"]],
     main="Productivity Index vs. idle_men",
     ylab="Productivity Index",
     xlab="Number of idle worker due to production interruption")
plot(data[["no_of_workers"]],
     data[["actual_productivity"]],
     main="Productivity Index vs. Number of Workers",
     ylab="Productivity Index",
     xlab="Number of Workers in team")

# separating data

sweing<-subset(data,data$department==1)
finishing<-subset(data,data$department==2)
sewingTeam01<-subset(sweing,sweing$team==1)
sewingTeam02<-subset(sweing,sweing$team==2)
sewingTeam03<-subset(sweing,sweing$team==3)
sewingTeam04<-subset(sweing,sweing$team==4)
sewingTeam05<-subset(sweing,sweing$team==5)
sewingTeam06<-subset(sweing,sweing$team==6)
sewingTeam07<-subset(sweing,sweing$team==7)
sewingTeam08<-subset(sweing,sweing$team==8)
sewingTeam09<-subset(sweing,sweing$team==9)
sewingTeam10<-subset(sweing,sweing$team==10)
sewingTeam11<-subset(sweing,sweing$team==11)
sewingTeam12<-subset(sweing,sweing$team==12)

finishingTeam01<-subset(finishing,finishing$team==1)
finishingTeam02<-subset(finishing,finishing$team==2)
finishingTeam03<-subset(finishing,finishing$team==3)
finishingTeam04<-subset(finishing,finishing$team==4)
finishingTeam05<-subset(finishing,finishing$team==5)
finishingTeam06<-subset(finishing,finishing$team==6)
finishingTeam07<-subset(finishing,finishing$team==7)
finishingTeam08<-subset(finishing,finishing$team==8)
finishingTeam09<-subset(finishing,finishing$team==9)
finishingTeam10<-subset(finishing,finishing$team==10)
finishingTeam11<-subset(finishing,finishing$team==11)
finishingTeam12<-subset(finishing,finishing$team==12)

write.csv(sewingTeam01,file="sewingTeam01.csv")
write.csv(sewingTeam02,file="sewingTeam02.csv")
write.csv(sewingTeam03,file="sewingTeam03.csv")
write.csv(sewingTeam04,file="sewingTeam04.csv")
write.csv(sewingTeam05,file="sewingTeam05.csv")
write.csv(sewingTeam06,file="sewingTeam06.csv")
write.csv(sewingTeam07,file="sewingTeam07.csv")
write.csv(sewingTeam08,file="sewingTeam08.csv")
write.csv(sewingTeam09,file="sewingTeam09.csv")
write.csv(sewingTeam10,file="sewingTeam10.csv")
write.csv(sewingTeam11,file="sewingTeam11.csv")
write.csv(sewingTeam12,file="sewingTeam12.csv")

write.csv(finishingTeam01,file="finishingTeam01.csv")
write.csv(finishingTeam02,file="finishingTeam02.csv")
write.csv(finishingTeam03,file="finishingTeam03.csv")
write.csv(finishingTeam04,file="finishingTeam04.csv")
write.csv(finishingTeam05,file="finishingTeam05.csv")
write.csv(finishingTeam06,file="finishingTeam06.csv")
write.csv(finishingTeam07,file="finishingTeam07.csv")
write.csv(finishingTeam08,file="finishingTeam08.csv")
write.csv(finishingTeam09,file="finishingTeam09.csv")
write.csv(finishingTeam10,file="finishingTeam10.csv")
write.csv(finishingTeam11,file="finishingTeam11.csv")
write.csv(finishingTeam12,file="finishingTeam12.csv")

par(mfcol = c(3, 1))
plot(finishingTeam01$actual_productivity, type = "l", col = "blue", main = "Line Plot in Base R")
plot(finishingTeam01$no_of_workers, type = "l",col = "red")
plot(finishingTeam01$over_time, type = "l",col = "green")

plot(finishingTeam02$actual_productivity, type = "l", col = "blue", main = "Line Plot in Base R")
plot(finishingTeam02$no_of_workers, type = "l",col = "red")
plot(finishingTeam02$over_time, type = "l",col = "green")

install.packages("ggplot2")http://127.0.0.1:9249/graphics/6e0f41d2-4d8a-4e53-b3fb-eeee08b1d746.png
library(ggplot2)
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date, y = sewingTeam01$actual_productivity)) +
  geom_line()

hist(sewingTeam01$actual_productivity)
hist(sewingTeam02$actual_productivity)
hist(sewingTeam03$actual_productivity)
hist(sewingTeam04$actual_productivity)
hist(sewingTeam05$actual_productivity)
hist(sewingTeam06$actual_productivity)
hist(sewingTeam07$actual_productivity)
hist(sewingTeam08$actual_productivity)
hist(sewingTeam09$actual_productivity)
hist(sewingTeam10$actual_productivity)
hist(sewingTeam11$actual_productivity)
hist(sewingTeam12$actual_productivity)

# Calculating the mean of each team variable
# Team01
mean01=mean(sewingTeam01$actual_productivity)
var01 =var(sewingTeam01$actual_productivity)
meanWorker01=mean(sewingTeam01$no_of_workers)
meanTP01=mean(sewingTeam01$targeted_productivity)
meanSMV01=mean(sewingTeam01$smv)
meanWIP01=mean(sewingTeam01$wip)
meanInsentive01=mean(sewingTeam01$incentive)
meanOvertime01=mean(sewingTeam01$over_time)

#Team02
mean02=mean(sewingTeam02$actual_productivity)
var02 =var(sewingTeam02$actual_productivity)
meanWorker02=mean(sewingTeam02$no_of_workers)
meanTP02=mean(sewingTeam02$targeted_productivity)
meanSMV02=mean(sewingTeam02$smv)
meanWIP02=mean(sewingTeam02$wip)
meanInsentive02=mean(sewingTeam02$incentive)
meanOvertime02=mean(sewingTeam02$over_time)

#Team03
mean03=mean(sewingTeam03$actual_productivity)
var03 =var(sewingTeam03$actual_productivity)
meanWorker03=mean(sewingTeam03$no_of_workers)
meanTP03=mean(sewingTeam03$targeted_productivity)
meanSMV03=mean(sewingTeam03$smv)
meanWIP03=mean(sewingTeam03$wip)
meanInsentive03=mean(sewingTeam03$incentive)
meanOvertime03=mean(sewingTeam03$over_time)

#Team04
mean04=mean(sewingTeam04$actual_productivity)
var04 =var(sewingTeam04$actual_productivity)
meanWorker04=mean(sewingTeam04$no_of_workers)
meanTP04=mean(sewingTeam04$targeted_productivity)
meanSMV04=mean(sewingTeam04$smv)
meanWIP04=mean(sewingTeam04$wip)
meanInsentive04=mean(sewingTeam04$incentive)
meanOvertime04=mean(sewingTeam04$over_time)

#Team05
mean05=mean(sewingTeam05$actual_productivity)
var05 =var(sewingTeam05$actual_productivity)
meanWorker05=mean(sewingTeam05$no_of_workers)
meanTP05=mean(sewingTeam05$targeted_productivity)
meanSMV05=mean(sewingTeam05$smv)
meanWIP05=mean(sewingTeam05$wip)
meanInsentive05=mean(sewingTeam05$incentive)
meanOvertime05=mean(sewingTeam05$over_time)

#Team06
mean06=mean(sewingTeam06$actual_productivity)
var06 =var(sewingTeam06$actual_productivity)
meanWorker06=mean(sewingTeam06$no_of_workers)
meanTP06=mean(sewingTeam06$targeted_productivity)
meanSMV06=mean(sewingTeam05$smv)
meanWIP06=mean(sewingTeam06$wip)
meanInsentive06=mean(sewingTeam06$incentive)
meanOvertime06=mean(sewingTeam06$over_time)

#Team07
mean07=mean(sewingTeam07$actual_productivity)
var07 =var(sewingTeam07$actual_productivity)
meanWorker07=mean(sewingTeam07$no_of_workers)
meanTP07=mean(sewingTeam07$targeted_productivity)
meanSMV07=mean(sewingTeam07$smv)
meanWIP07=mean(sewingTeam07$wip)
meanInsentive07=mean(sewingTeam07$incentive)
meanOvertime07=mean(sewingTeam07$over_time)

#Team08
mean08=mean(sewingTeam08$actual_productivity)
var08 =var(sewingTeam08$actual_productivity)
meanWorker08=mean(sewingTeam08$no_of_workers)
meanTP08=mean(sewingTeam08$targeted_productivity)
meanSMV08=mean(sewingTeam08$smv)
meanWIP08=mean(sewingTeam08$wip)
meanInsentive08=mean(sewingTeam08$incentive)
meanOvertime08=mean(sewingTeam08$over_time)

#Team09
mean09=mean(sewingTeam09$actual_productivity)
var09 =var(sewingTeam09$actual_productivity)
meanWorker09=mean(sewingTeam09$no_of_workers)
meanTP09=mean(sewingTeam09$targeted_productivity)
meanSMV09=mean(sewingTeam09$smv)
meanWIP09=mean(sewingTeam09$wip)
meanInsentive09=mean(sewingTeam09$incentive)
meanOvertime09=mean(sewingTeam09$over_time)

#Team10
mean10=mean(sewingTeam10$actual_productivity)
var10 =var(sewingTeam10$actual_productivity)
meanWorker10=mean(sewingTeam10$no_of_workers)
meanTP10=mean(sewingTeam10$targeted_productivity)
meanSMV10=mean(sewingTeam10$smv)
meanWIP10=mean(sewingTeam10$wip)
meanInsentive10=mean(sewingTeam10$incentive)
meanOvertime10=mean(sewingTeam10$over_time)

#Team11
mean11=mean(sewingTeam11$actual_productivity)
var11 =var(sewingTeam11$actual_productivity)
meanWorker11=mean(sewingTeam11$no_of_workers)
meanTP11=mean(sewingTeam11$targeted_productivity)
meanSMV11=mean(sewingTeam11$smv)
meanWIP11=mean(sewingTeam11$wip)
meanInsentive11=mean(sewingTeam11$incentive)
meanOvertime11=mean(sewingTeam11$over_time)

#Team12
mean12=mean(sewingTeam12$actual_productivity)
var12 =var(sewingTeam12$actual_productivity)
meanWorker12=mean(sewingTeam12$no_of_workers)
meanTP12=mean(sewingTeam12$targeted_productivity)
meanSMV12=mean(sewingTeam12$smv)
meanWIP12=mean(sewingTeam12$wip)
meanInsentive12=mean(sewingTeam12$incentive)
meanOvertime12=mean(sewingTeam12$over_time)



meanOfSewing <- c(mean01,mean02,mean03,mean04,mean05,mean06,mean07,mean08,mean09,mean10,mean11,mean12)
meanofWorkers<-c(meanWorker01,meanWorker02,meanWorker03,meanWorker04,meanWorker05,meanWorker06,meanWorker07,meanWorker08,meanWorker09,meanWorker10,meanWorker11,meanWorker12)
meanTP<-c(meanTP01,meanTP02,meanTP03,meanTP04,meanTP05,meanTP06,meanTP07,meanTP08,meanTP09,meanTP10,meanTP11,meanTP12)
meanSMV<-c(meanSMV01,meanSMV02,meanSMV03,meanSMV04,meanSMV05,meanSMV06,meanSMV07,meanSMV08,meanSMV09,meanSMV10,meanSMV11,meanSMV12)
meanWIP<-c(meanWIP01,meanWIP02,meanWIP03,meanWIP04,meanWIP05,meanWIP06,meanWIP07,meanWIP08,meanWIP09,meanWIP10,meanWIP11,meanWIP12)
meanInsentive<-c(meanInsentive01,meanInsentive02,meanInsentive03,meanInsentive04,meanInsentive05,meanInsentive06,meanInsentive07,meanInsentive08,meanInsentive09,meanInsentive10,meanInsentive11,meanInsentive12)
meanOvertime<-c(meanOvertime01, meanOvertime02,meanOvertime03,meanOvertime04,meanOvertime05,meanOvertime06,meanOvertime07,meanOvertime08,meanOvertime09,meanOvertime10,meanOvertime11,meanOvertime12)

#investigate relationship between variables and  productivity
plot(meanOfSewing)
hist(meanOfSewing)
plot(meanofWorkers,meanOfSewing,main="Mean productivity vs Mean Number of workers")
plot(meanTP,meanOfSewing,main="Mean productivity vs Mean Target Productivity")
plot(meanSMV,meanOfSewing,main="Mean productivity vs Mean SMV")
plot(meanWIP,meanOfSewing,main="Mean productivity vs Mean WIP")
plot(meanInsentive,meanOfSewing,main="Mean productivity vs Mean Incentive")
plot(meanOvertime,meanOfSewing,main="Mean productivity vs Mean Overtime")

# Explanation behind these plots,

#The goal of these plots is to see why some teams perform better than others.
#Is it because they have more people on their team, is it because they are getting paid more.
# SO we took the mean of some of the variables by team and plotted them against the mean of each team's productivity
# this showed us some relationships that revealed to us what variables on agerage effected the productivity of sewing and 
#which variables didn't. 






#box plot of productivity by team
par(mfrow = c(3, 4))
boxplot(sewingTeam01$actual_productivity,main="Productivity Index",xlab="Sewing Team01")
boxplot(sewingTeam02$actual_productivity,main="Productivity Index",xlab="Sewing Team02")
boxplot(sewingTeam03$actual_productivity,main="Productivity Index",xlab="Sewing Team03")
boxplot(sewingTeam04$actual_productivity,main="Productivity Index",xlab="Sewing Team04")
boxplot(sewingTeam05$actual_productivity,main="Productivity Index",xlab="Sewing Team05")
boxplot(sewingTeam06$actual_productivity,main="Productivity Index",xlab="Sewing Team06")
boxplot(sewingTeam07$actual_productivity,main="Productivity Index",xlab="Sewing Team07")
boxplot(sewingTeam08$actual_productivity,main="Productivity Index",xlab="Sewing Team08")
boxplot(sewingTeam09$actual_productivity,main="Productivity Index",xlab="Sewing Team09")
boxplot(sewingTeam10$actual_productivity,main="Productivity Index",xlab="Sewing Team10")
boxplot(sewingTeam11$actual_productivity,main="Productivity Index",xlab="Sewing Team11")
boxplot(sewingTeam12$actual_productivity,main="Productivity Index",xlab="Sewing Team12")

