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
