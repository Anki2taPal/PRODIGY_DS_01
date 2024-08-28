# Data-Sets

#We have a World Population data-set consisting records of population from the year 1960 to 2023.


# Total Polulation data-set

library("rmarkdown")
total=read.csv("C:\\users\\hp\\OneDrive\\Documents\\New folder\\totalpolutation.csv")



# Dimension of the data-set
dim(total)



#• SP.POP.TOTL (Population,total)

#• It has 217 rows and 64 columns.
colnames(total)



# Female Population data-set 
female=read.csv("C:\\users\\hp\\OneDrive\\Documents\\femalepopulation.csv")

# Dimension of the data-set


dim(female)


#• SP.POP.TOTL.FE.IN (Population,female)

#• It has 217 rows and 64 columns.


colnames(female)


# Male Population data-set


male=read.csv("C:\\users\\hp\\OneDrive\\Documents\\loan_files\\malepopulation.csv")




# Dimension of the data-set


dim(male)


#• SP.POP.TOTL.MA.IN (Population,male)

#• It has 217 rows and 64 columns.

colnames(male)



# Checking for the missing values

sum(is.na(total))



sum(is.na(female))



sum(is.na(male))



# Dropping unneccesary columns from the data-sets


total=total[,-c(2:4)]
male=male[-c(2:4)]
female=female[-c(2:4)]




# Country Names


unique(total$Country.Name)


# Total top 20 countries


# 1960

#TOTAL POPULATION


t=head(total[order(-total$X1960),],20)
print("Top 20 countries of total population")
totaltop=t[,c("Country.Name","X1960")]



library("ggplot2")
ggplot(totaltop,aes(x=X1960,y=reorder(Country.Name,X1960)))+geom_bar(stat="identity",fill="lightblue")+geom_text(aes(label=X1960),size=2)+labs(title="Top 20 Countries of Total Population (1960)",x="Total Population",y="Country")



#FEMALE POPULATION



tf=head(female[order(-female$X1960),],20)
print("Top 20 countries of total population")
totaltopf=tf[,c("Country.Name","X1960")]



library("ggplot2")
ggplot(totaltopf,aes(x=X1960,y=reorder(Country.Name,X1960)))+geom_bar(stat="identity",fill="orange")+geom_text(aes(label=X1960),size=2)+labs(title="Top 20 Countries of Female Population (1960)",x="Female Population",y="Country")



#MALE POPULATION


tm=head(male[order(-male$X1960),],20)
print("Top 20 countries of total population")
totaltopm=tm[,c("Country.Name","X1960")]



library("ggplot2")
ggplot(totaltopm,aes(x=X1960,y=reorder(Country.Name,X1960)))+geom_bar(stat="identity",fill="cyan")+geom_text(aes(label=X1960),size=2)+labs(title="Top 20 Countries of Male Population (1960)",x="Male Population",y="Country")



# 1990

#TOTAL POPULATION


t1=head(total[order(-total$X1990),],20)
print("Top 20 countries of total population")
totaltop1=t1[,c("Country.Name","X1990")]



library("ggplot2")
ggplot(totaltop1,aes(x=X1990,y=reorder(Country.Name,X1990)))+geom_bar(stat="identity",fill="lightgreen")+geom_text(aes(label=X1990),size=2)+labs(title="Top 20 Countries of Total Population (1990)",x="Total Population",y="Country")


#FEMALE POPULATION


tf1=head(female[order(-female$X1990),],20)
print("Top 20 countries of female population")
totaltopf1=tf1[,c("Country.Name","X1990")]



library("ggplot2")
ggplot(totaltopf1,aes(x=X1990,y=reorder(Country.Name,X1990)))+geom_bar(stat="identity",fill="red")+geom_text(aes(label=X1990),size=2)+labs(title="Top 20 Countries of Female Population (1990)",x="Female Population",y="Country")

#MALE POPULATION


tm1=head(male[order(-male$X1990),],20)
print("Top 20 countries of female population")
totaltopm1=tm1[,c("Country.Name","X1990")]

library("ggplot2")
ggplot(totaltopm1,aes(x=X1990,y=reorder(Country.Name,X1990)))+geom_bar(stat="identity",fill="green")+geom_text(aes(label=X1990),size=2)+labs(title="Top 20 Countries of Male Population (1990)",x="Male Population",y="Country")

# 2023

#TOTAL POPULATION

t2=head(total[order(-total$X2023),],20)
print("Top 20 countries of total population")
totaltop1=t2[,c("Country.Name","X2023")]

library("ggplot2")
ggplot(totaltop1,aes(x=X2023,y=reorder(Country.Name,X2023)))+geom_bar(stat="identity",fill="yellow")+geom_text(aes(label=X2023),size=2)+labs(title="Top 20 Countries of Total Population (2023)",x="Total Population",y="Country")


#FEMALE POPULATION


tf2=head(female[order(-female$X2023),],20)
print("Top 20 countries of female population")
totaltopf2=tf2[,c("Country.Name","X2023")]

library("ggplot2")
ggplot(totaltopf2,aes(x=X2023,y=reorder(Country.Name,X2023)))+geom_bar(stat="identity",fill="blue")+geom_text(aes(label=X2023),size=2)+labs(title="Top 20 Countries of Female Population (2023)",x="Female Population",y="Country")




#MALE POPULATION
tm2=head(male[order(-male$X2023),],20)
print("Top 20 countries of male population")
totaltopm2=tf2[,c("Country.Name","X2023")]

library("ggplot2")
ggplot(totaltopm2,aes(x=X2023,y=reorder(Country.Name,X2023)))+geom_bar(stat="identity",fill="purple")+geom_text(aes(label=X2023),size=2)+labs(title="Top 20 Countries of Male Population (2023)",x="Male Population",y="Country")


#Bottom 10 countries in 1960,1990,2023

#TOTAL POPULATION IN 1960


b=tail(total[order(-total$X1960),],10)
print("Bottom 10 countries of total population")
totalb=b[,c("Country.Name","X1960")]


ggplot(totalb,aes(x=X1960,y=reorder(Country.Name,X1960)))+geom_bar(stat="identity",fill="Pink")+geom_text(aes(label=X1960))+labs(title="Bottom 10 Countries of Total Population (1960)",x="Total Population",y="Country")


#TOTAL POPULATION IN 1990


b=tail(total[order(-total$X1990),],10)
print("Bottom 10 countries of total population")
totalb=b[,c("Country.Name","X1990")]

ggplot(totalb,aes(x=X1990,y=reorder(Country.Name,X1990)))+geom_bar(stat="identity",fill="#666000")+geom_text(aes(label=X1990))+labs(title="Bottom 10 Countries of Total Population (1990)",x="Total Population",y="Country")


#TOTAL POPULATION IN 2023


b=tail(total[order(-total$X2023),],10)
print("Bottom 10 countries of total population")
totalb=b[,c("Country.Name","X2023")]

ggplot(totalb,aes(x=X2023,y=reorder(Country.Name,X2023)))+geom_bar(stat="identity",fill="#999666")+geom_text(aes(label=X2023))+labs(title="Bottom 10 Countries of Total Population (2023)",x="Total Population",y="Country")






#Female vs Male from 1960,1990 and 2023 Bottom 10 countries
b1=tail(female[order(-female$X1960),],10)
print("Bottom 10 countries of female population in 1960")
totalfb=b1[,c("Country.Name","X1960")]
totalfb

b2=tail(female[order(-female$X1990),],10)
print("Bottom 10 countries of female population in 1990")
totalfb1=b2[,c("Country.Name","X1990")]
totalfb1

b3=tail(female[order(-female$X2023),],10)
print("Bottom 10 countries of female population in 2023")
totalfb2=b3[,c("Country.Name","X2023")]
totalfb2

b4=tail(male[order(-male$X1960),],10)
print("Bottom 10 countries of male population in 1960")
totalmb=b4[,c("Country.Name","X1960")]
totalmb

b5=tail(male[order(-male$X1990),],10)
print("Bottom 10 countries of male population in 1990")
totalmb1=b5[,c("Country.Name","X1990")]
totalmb1

b6=tail(male[order(-male$X2023),],10)
print("Bottom 10 countries of male population in 2023")
totalmb2=b6[,c("Country.Name","X2023")]
totalmb2


#Plot 1960,1990 and 2023 Female vs Male
w=data.frame("val"=c(sum(totalfb$X1960),sum(totalfb1$X1990),sum(totalfb2$X2023),sum(totalmb$X1960),sum(totalmb1$X1990),sum(totalmb2$X2023)),"year"=rep(c("1960","1990","2023"),times=2),"Gender"=c(rep("female",3),rep("male",3)))
ggplot(data=w,aes(x=year,y=val,fill=Gender))+geom_bar(stat="identity",position=position_dodge())+labs(title="Bottom 10 Countries of Female vs Male Population (1960,1990,2023)",x="Year",y="Population")+scale_fill_brewer(palette = "Paired")



#Total Population in India from 1960 to 2023
index=which(total$Country.Name=="India")
year=colnames(total[92,][2:65])
value=total[92,][2:65]
do=data.frame("year"=year,"value"=value)
value=unlist(value,use.names = FALSE)
ggplot(data=do,aes(x=year,y=value,group=1))+geom_line()+geom_point()+theme(axis.text.x=element_text(angle=90))+labs(title="India's Total population",x="Year",y="Total Population")





#Comparison


index1=which(female$Country.Name=="India")
index2=which(male$Country.Name=="India")
year1=colnames(female[92,][2:65])
year2=colnames(male[92,][2:65])
value1=female[92,][2:65]
value1=unlist(value1,use.names = FALSE)
value2=male[92,][2:65]
value2=unlist(value2,use.names = FALSE)
do1=data.frame("year"=c(year1,year2),"value"=c(value1,value2),"Gender"=c(rep("female",64),rep("male",64)))
ggplot(data=do1,aes(x=year,y=value,group=Gender,colour=Gender))+geom_line()+geom_point()+theme(axis.text.x=element_text(angle=90))+labs(title="India's Female and Male population",x="Year",y="Female and Male Population")






