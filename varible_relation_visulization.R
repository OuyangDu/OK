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
