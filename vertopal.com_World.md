---
date: 2024-08-11
output:
  html_document: default
title: World
---

`{r setup, include=FALSE} knitr::opts_chunk$set(echo = TRUE)`

# Data-Sets

We have a World Population data-set consisting records of population
from the year 1960 to 2023.

## Total Polulation data-set

``` {r,echo=false,comment=na}
library("rmarkdown")
total=read.csv("C:\\users\\hp\\OneDrive\\Documents\\New folder\\totalpolutation.csv")
paged_table(total)
```

# Dimension of the data-set

``` {r,comment=na,echo=false}
dim(total)
```

• SP.POP.TOTL (Population,total)

• It has 217 rows and 64 columns.

``` {r,comment=na,echo=false}
colnames(total)
```

## Female Population data-set

``` {r,comment=na,echo=false}
female=read.csv("C:\\users\\hp\\OneDrive\\Documents\\femalepopulation.csv")
paged_table(female)
```

# Dimension of the data-set

``` {r,comment=na,echo=false}
dim(female)
```

• SP.POP.TOTL.FE.IN (Population,female)

• It has 217 rows and 64 columns.

``` {r,comment=na,echo=false}
colnames(female)
```

## Male Population data-set

``` {r,comment=na,echo=false}
male=read.csv("C:\\users\\hp\\OneDrive\\Documents\\loan_files\\malepopulation.csv")
paged_table(male)
```

# Dimension of the data-set

``` {r,comment=na,echo=false}
dim(male)
```

• SP.POP.TOTL.MA.IN (Population,male)

• It has 217 rows and 64 columns.

``` {r,comment=na,echo=false}
colnames(male)
```

# Checking for the missing values

``` {r,comment=na,echo=false}
sum(is.na(total))
```

``` {r,comment=na,echo=false}
sum(is.na(female))
```

``` {r,comment=na,echo=false}
sum(is.na(male))
```

# Dropping unneccesary columns from the data-sets

``` {r,comment=na,echo=false}
total=total[,-c(2:4)]
male=male[-c(2:4)]
female=female[-c(2:4)]
```

# Country Names

``` {r,comment=na,echo=false}
unique(total$Country.Name)
```

## **Total top 20 countries**

### 1960

#### ***TOTAL POPULATION***

``` {r,comment=na,echo=false}
t=head(total[order(-total$X1960),],20)
print("Top 20 countries of total population")
totaltop=t[,c("Country.Name","X1960")]
```

``` {r,comment=na,echo=false}
library("ggplot2")
ggplot(totaltop,aes(x=X1960,y=reorder(Country.Name,X1960)))+geom_bar(stat="identity",fill="lightblue")+geom_text(aes(label=X1960),size=2)+labs(title="Top 20 Countries of Total Population (1960)",x="Total Population",y="Country")
```

#### ***FEMALE POPULATION***

``` {r,comment=na,echo=false}
tf=head(female[order(-female$X1960),],20)
print("Top 20 countries of total population")
totaltopf=tf[,c("Country.Name","X1960")]
```

``` {r,comment=na,echo=false}
library("ggplot2")
ggplot(totaltopf,aes(x=X1960,y=reorder(Country.Name,X1960)))+geom_bar(stat="identity",fill="orange")+geom_text(aes(label=X1960),size=2)+labs(title="Top 20 Countries of Female Population (1960)",x="Female Population",y="Country")
```

##### ***MALE POPULATION***

``` {r,comment=na,echo=false}
tm=head(male[order(-male$X1960),],20)
print("Top 20 countries of total population")
totaltopm=tm[,c("Country.Name","X1960")]
```

``` {r,comment=na,echo=false}
library("ggplot2")
ggplot(totaltopm,aes(x=X1960,y=reorder(Country.Name,X1960)))+geom_bar(stat="identity",fill="cyan")+geom_text(aes(label=X1960),size=2)+labs(title="Top 20 Countries of Male Population (1960)",x="Male Population",y="Country")
```

### 1990

#### ***TOTAL POPULATION***

``` {r,comment=na,echo=false}
t1=head(total[order(-total$X1990),],20)
print("Top 20 countries of total population")
totaltop1=t1[,c("Country.Name","X1990")]
```

``` {r,comment=na,echo=false}
library("ggplot2")
ggplot(totaltop1,aes(x=X1990,y=reorder(Country.Name,X1990)))+geom_bar(stat="identity",fill="lightgreen")+geom_text(aes(label=X1990),size=2)+labs(title="Top 20 Countries of Total Population (1990)",x="Total Population",y="Country")
```

#### ***FEMALE POPULATION***

``` {r,comment=na,echo=false}
tf1=head(female[order(-female$X1990),],20)
print("Top 20 countries of female population")
totaltopf1=tf1[,c("Country.Name","X1990")]
```

``` {r,comment=na,echo=false}
library("ggplot2")
ggplot(totaltopf1,aes(x=X1990,y=reorder(Country.Name,X1990)))+geom_bar(stat="identity",fill="red")+geom_text(aes(label=X1990),size=2)+labs(title="Top 20 Countries of Female Population (1990)",x="Female Population",y="Country")
```

#### ***MALE POPULATION***

``` {r,comment=na,echo=false}
tm1=head(male[order(-male$X1990),],20)
print("Top 20 countries of female population")
totaltopm1=tm1[,c("Country.Name","X1990")]
```

``` {r,comment=na,echo=false}
library("ggplot2")
ggplot(totaltopm1,aes(x=X1990,y=reorder(Country.Name,X1990)))+geom_bar(stat="identity",fill="green")+geom_text(aes(label=X1990),size=2)+labs(title="Top 20 Countries of Male Population (1990)",x="Male Population",y="Country")
```

### 2023

##### ***TOTAL POPULATION***

``` {r,comment=na,echo=false}
t2=head(total[order(-total$X2023),],20)
print("Top 20 countries of total population")
totaltop1=t2[,c("Country.Name","X2023")]
```

``` {r,comment=na,echo=false}
library("ggplot2")
ggplot(totaltop1,aes(x=X2023,y=reorder(Country.Name,X2023)))+geom_bar(stat="identity",fill="yellow")+geom_text(aes(label=X2023),size=2)+labs(title="Top 20 Countries of Total Population (2023)",x="Total Population",y="Country")
```

#### ***FEMALE POPULATION***

``` {r,comment=na,echo=false}
tf2=head(female[order(-female$X2023),],20)
print("Top 20 countries of female population")
totaltopf2=tf2[,c("Country.Name","X2023")]
```

``` {r,comment=na,echo=false}
library("ggplot2")
ggplot(totaltopf2,aes(x=X2023,y=reorder(Country.Name,X2023)))+geom_bar(stat="identity",fill="blue")+geom_text(aes(label=X2023),size=2)+labs(title="Top 20 Countries of Female Population (2023)",x="Female Population",y="Country")
```

#### ***MALE POPULATION***

``` {r,comment=na,echo=false}
tm2=head(male[order(-male$X2023),],20)
print("Top 20 countries of male population")
totaltopm2=tf2[,c("Country.Name","X2023")]
```

``` {r,comment=na,echo=false}
library("ggplot2")
ggplot(totaltopm2,aes(x=X2023,y=reorder(Country.Name,X2023)))+geom_bar(stat="identity",fill="purple")+geom_text(aes(label=X2023),size=2)+labs(title="Top 20 Countries of Male Population (2023)",x="Male Population",y="Country")
```

## **Bottom 10 countries in 1960,1990,2023**

#### ***TOTAL POPULATION IN 1960***

``` {r,comment=na,echo=false}
b=tail(total[order(-total$X1960),],10)
print("Bottom 10 countries of total population")
totalb=b[,c("Country.Name","X1960")]
```

``` {r,comment=na,echo=false}
ggplot(totalb,aes(x=X1960,y=reorder(Country.Name,X1960)))+geom_bar(stat="identity",fill="Pink")+geom_text(aes(label=X1960))+labs(title="Bottom 10 Countries of Total Population (1960)",x="Total Population",y="Country")
```

#### ***TOTAL POPULATION IN 1990***

``` {r,comment=na,echo=false}
b=tail(total[order(-total$X1990),],10)
print("Bottom 10 countries of total population")
totalb=b[,c("Country.Name","X1990")]
```

``` {r,comment=na,echo=false}
ggplot(totalb,aes(x=X1990,y=reorder(Country.Name,X1990)))+geom_bar(stat="identity",fill="#666000")+geom_text(aes(label=X1990))+labs(title="Bottom 10 Countries of Total Population (1990)",x="Total Population",y="Country")
```

#### ***TOTAL POPULATION IN 2023***

``` {r,comment=na,echo=false}
b=tail(total[order(-total$X2023),],10)
print("Bottom 10 countries of total population")
totalb=b[,c("Country.Name","X2023")]
```

``` {r,comment=na,echo=false}
ggplot(totalb,aes(x=X2023,y=reorder(Country.Name,X2023)))+geom_bar(stat="identity",fill="#999666")+geom_text(aes(label=X2023))+labs(title="Bottom 10 Countries of Total Population (2023)",x="Total Population",y="Country")
```

#### ***Female vs Male from 1960,1990 and 2023 Bottom 10 countries***

``` {r,comment=na,echo=false}
b1=tail(female[order(-female$X1960),],10)
print("Bottom 10 countries of female population in 1960")
totalfb=b1[,c("Country.Name","X1960")]
totalfb
```

``` {r,comment=na,echo=false}
b2=tail(female[order(-female$X1990),],10)
print("Bottom 10 countries of female population in 1990")
totalfb1=b2[,c("Country.Name","X1990")]
totalfb1
```

``` {r,comment=na,echo=false}
b3=tail(female[order(-female$X2023),],10)
print("Bottom 10 countries of female population in 2023")
totalfb2=b3[,c("Country.Name","X2023")]
totalfb2
```

``` {r,comment=na,echo=false}
b4=tail(male[order(-male$X1960),],10)
print("Bottom 10 countries of male population in 1960")
totalmb=b4[,c("Country.Name","X1960")]
totalmb
```

``` {r,comment=na,echo=false}
b5=tail(male[order(-male$X1990),],10)
print("Bottom 10 countries of male population in 1990")
totalmb1=b5[,c("Country.Name","X1990")]
totalmb1
```

``` {r,comment=na,echo=false}
b6=tail(male[order(-male$X2023),],10)
print("Bottom 10 countries of male population in 2023")
totalmb2=b6[,c("Country.Name","X2023")]
totalmb2
```

#### ***Plot 1960,1990 and 2023 Female vs Male***

``` {r,comment=na,echo=false}
w=data.frame("val"=c(sum(totalfb$X1960),sum(totalfb1$X1990),sum(totalfb2$X2023),sum(totalmb$X1960),sum(totalmb1$X1990),sum(totalmb2$X2023)),"year"=rep(c("1960","1990","2023"),times=2),"Gender"=c(rep("female",3),rep("male",3)))
ggplot(data=w,aes(x=year,y=val,fill=Gender))+geom_bar(stat="identity",position=position_dodge())+labs(title="Bottom 10 Countries of Female vs Male Population (1960,1990,2023)",x="Year",y="Population")+scale_fill_brewer(palette = "Paired")
```

#### ***Total Population in India from 1960 to 2023***

``` {r,comment=na,echo=false}
index=which(total$Country.Name=="India")
year=colnames(total[92,][2:65])
value=total[92,][2:65]
do=data.frame("year"=year,"value"=value)
value=unlist(value,use.names = FALSE)
ggplot(data=do,aes(x=year,y=value,group=1))+geom_line()+geom_point()+theme(axis.text.x=element_text(angle=90))+labs(title="India's Total population",x="Year",y="Total Population")
```

## ***Comparison***

``` {r,comment=na,echo=false}
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
```

# CONCLUSION

This project provided a comprehensive analysis of global population
trends from 1960 to 2023, focusing on total population, female
population, and male population data. The data-sets used in this study
consisted of 217 rows and 68 columns, encompassing countries worldwide
over the specified period. After verifying that there were no missing
values, we streamlined the data-sets by removing unnecessary columns,
specifically the 2nd, 3rd, and 4th, to focus our analysis on the most
relevant information. The country names were then displayed to ensure
clarity in the data representation.

Given that population data is discrete, we utilized bar and column
charts for visual representation. We selected three key years---1960,
1990, and 2023---to examine and compare the population distribution
among the top 20 and bottom 10 countries in terms of total population,
as well as gender-specific populations (female and male).

Global Population Trends Our analysis revealed significant shifts in
global population rankings over the six decades:

1960: China was the most populous country, maintaining its position as
the global leader in population size. Palau was identified as the least
populous area during this year. 1990: China remained the most populous
country, continuing its demographic dominance. The country with the
lowest population shifted to St. Martin (French part). 2023: India
emerged as the most populous country, overtaking China, marking a
significant demographic shift. The region with the smallest population
in 2023 was Sint Maarten (Dutch part). These findings underscore the
dynamic nature of population growth and redistribution, influenced by
various socio-economic, political, and environmental factors.

Gender-Specific Population Trends We further delved into gender-specific
population trends by plotting paired bar diagrams for the bottom 10
countries in terms of male and female populations for the years 1960,
1990, and 2023:

1960: The populations of males and females in the bottom 10 countries
were nearly equal, indicating a balanced gender distribution in these
less populous regions. 1990: A noticeable shift occurred, with the male
population surpassing the female population in the bottom 10 countries.
This imbalance may reflect gender-specific migration patterns, birth
rates, or other socio-economic factors prevalent at the time. 2023: The
trend reversed, with the female population exceeding the male population
in the bottom 10 countries. This shift could be attributed to various
factors, including changes in life expectancy, migration trends, and
gender-specific population policies. India's Population Trends A special
focus was given to India's population trajectory from 1960 to 2023,
using line diagrams to illustrate the trends:

Overall Population Growth: India's total population exhibited a
consistent upward trend, reflecting the country's rapid population
growth over the past six decades. Gender-Specific Growth: Both male and
female populations in India have increased steadily over time. However,
throughout this period, the male population has consistently been higher
than the female population. This disparity highlights ongoing gender
imbalances that have persisted despite overall population growth.
Implications and Future Considerations The findings of this project
highlight the importance of understanding and monitoring population
trends, both globally and within specific countries. The shift in the
world's most populous country from China to India by 2023 is
particularly significant, indicating potential changes in global
economic and political dynamics.

The gender-specific analyses also provide valuable insights into the
demographic challenges faced by different regions, particularly in terms
of gender balance. These insights can inform future demographic
policies, health initiatives, and socio-economic planning.

In conclusion, this study has provided a detailed examination of
population dynamics over more than six decades, revealing significant
trends and shifts that are crucial for policymakers, researchers, and
planners as they prepare for the future.
