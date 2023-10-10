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
