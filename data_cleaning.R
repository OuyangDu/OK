# load dataset 
data <- read.csv("C:/Users/ThinkPad/Documents/dataproject/worker_productivity.csv")

# change department name to numbers sewing = 1; finishing = 2
for (j in 1:length(data$department)){
  if(data$department[j]=="sweing"){data$department[j]<-1}
  else if(data$department[j]=="finishing "){data$department[j]<-2}
  else if(data$department[j]=="finishing"){data$department[j]<-2}
}

# change day of the week to number  Monday=1, Sunday=7
for (i in 1:length(data$day)){
  if(data$day[i]=="Monday"){data$day[i]<-as.integer(1)}
  else if(data$day[i]=="Tuesday"){data$day[i]<-as.integer(2)}
  else if(data$day[i]=="Wednesday"){data$day[i]<-as.integer(3)}
  else if(data$day[i]=="Thursday"){data$day[i]<-as.integer(4)}
  else if(data$day[i]=="Friday"){data$day[i]<-as.integer(5)}
  else if(data$day[i]=="Saturday"){data$day[i]<-as.integer(6)}
  else if(data$day[i]=="Sunday"){data$day[i]<-as.integer(7)}
}

# changing the date to date format
data$date <- as.Date(data$date,format="%m/%d/%Y" )

#Changing Quarter to numbers
for (k in 1:length(data$quarter)){
  if(data$quarter[k]=="Quarter1"){data$quarter[k]<-as.integer(1)}
  else if(data$quarter[k]=="Quarter2"){data$quarter[k]<-as.integer(2)}
  else if(data$quarter[k]=="Quarter3"){data$quarter[k]<-as.integer(3)}
  else if(data$quarter[k]=="Quarter4"){data$quarter[k]<-as.integer(4)}
  else if(data$quarter[k]=="Quarter5"){data$quarter[k]<-as.integer(5)}
}

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

library(ggplot2)

#Incentive
######################################################################################
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date)) +
  geom_line(aes(y= sewingTeam01$actual_productivity,color="Actual Productivity"))+
  geom_line(aes(y = sewingTeam01$incentive/max(sewingTeam01$incentive), color = "Normalized Incentive"))+
  labs(x="Date", y = NA, title = "SewingTeam1 Productivity vs Targeted Normalized Incentive")+
  scale_color_manual(values = c("Actual Productivity" = "black", "Normalized Incentive" = "red")) +
  theme_minimal() +
  theme(legend.position = "top")

#Target Productivity
######################################################################################
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date)) +
  geom_line(aes(y= sewingTeam01$actual_productivity,color="Actual Productivity"))+
  geom_line(aes(y = sewingTeam01$targeted_productivity, color = "Targeted Productivity"))+
  labs(x="Date", y = NA, title = "SewingTeam1 Productivity vs Targeted Productivity")+
  scale_color_manual(values = c("Actual Productivity" = "black", "Targeted Productivity" = "blue")) +
  theme_minimal() +
  theme(legend.position = "top")

#SMV
######################################################################################
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date)) +
  geom_line(aes(y= sewingTeam01$actual_productivity,color="Actual Productivity"))+
  geom_line(aes(y = sewingTeam01$smv/max(sewingTeam01$smv), color = "Normalized SMV"))+
  labs(x="Date", y = NA, title = "SewingTeam1 Productivity vs Normalized SMV")+
  scale_color_manual(values = c("Actual Productivity" = "black", "Normalized SMV" = "green")) +
  theme_minimal() +
  theme(legend.position = "top")

#WIP
#####################################################################################
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date)) +
  geom_line(aes(y= sewingTeam01$actual_productivity,color="Actual Productivity"))+
  geom_line(aes(y = sewingTeam01$wip/max(sewingTeam01$wip), color = "Normalized WIP"))+
  labs(x="Date", y = NA, title = "SewingTeam1 Productivity vs Normalized WIP")+
  scale_color_manual(values = c("Actual Productivity" = "black", "Normalized WIP" = "purple")) +
  theme_minimal() +
  theme(legend.position = "top")

#overtime
###########################################################################################################
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date)) +
  geom_line(aes(y= sewingTeam01$actual_productivity,color="Actual Productivity"))+
  geom_line(aes(y = sewingTeam01$over_time/max(sewingTeam01$over_time), color = "Normalized Overtime"))+
  labs(x="Date", y = NA, title = "SewingTeam1 Productivity vs Normalized Overtime")+
  scale_color_manual(values = c("Actual Productivity" = "black", "Normalized Overtime" = "magenta")) +
    theme_minimal() +
    theme(legend.position = "top")

#Idle_time
############################################################################################################
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date)) +
  geom_line(aes(y= sewingTeam01$actual_productivity,color="Actual Productivity"))+
  geom_line(aes(y = sewingTeam01$idle_time, color = "Idle_time"))+
  labs(x="Date", y = NA, title = "SewingTeam1 Productivity vs Idle_time")+
  scale_color_manual(values = c("Actual Productivity" = "black", "Idle_time" = "cyan")) +
  theme_minimal() +
  theme(legend.position = "top")

#Idle_man
############################################################################################################
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date)) +
  geom_line(aes(y= sewingTeam01$actual_productivity,color="Actual Productivity"))+
  geom_line(aes(y = sewingTeam01$idle_men, color = "Idle_Worker"))+
  labs(x="Date", y = NA, title = "SewingTeam1 Productivity vs Idle_Worker")+
  scale_color_manual(values = c("Actual Productivity" = "black", "Idle_Worker" = "brown")) +
  theme_minimal() +
  theme(legend.position = "top")

#
############################################################################################################
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date)) +
  geom_line(aes(y= sewingTeam01$actual_productivity,color="Actual Productivity"))+
  geom_line(aes(y = sewingTeam01$no_of_style_change/max(sewingTeam01$no_of_style_change), color = "Normalized No. of style Change"))+
  labs(x="Date", y = NA, title = "SewingTeam1 Productivity vs Normalized No. of style Change")+
  scale_color_manual(values = c("Actual Productivity" = "black", "Normalized No. of style Change" = "pink")) +
  theme_minimal() +
  theme(legend.position = "top")

#
############################################################################################################
ggplot(data = sewingTeam01, aes(x = sewingTeam01$date)) +
  geom_line(aes(y= sewingTeam01$actual_productivity,color="Actual Productivity"))+
  geom_line(aes(y = sewingTeam01$no_of_workers/max(sewingTeam01$no_of_workers), color = "Normalized No. of workers"))+
  labs(x="Date", y = NA, title = "SewingTeam1 Productivity vs Normalized No. of workers")+
  scale_color_manual(values = c("Actual Productivity" = "black", "Normalized No. of workers" = "orange")) +
  theme_minimal() +
  theme(legend.position = "top")



