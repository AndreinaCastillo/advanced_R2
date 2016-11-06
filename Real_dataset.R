#Something using a real dataset
dir.create("data") #create a directory called data
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv",destfile = "data/gapminder.csv")

?dir.create #Get information about dir.create by typing ? before function

dat <- read.csv("data/gapminder.csv",header=TRUE)
head(dat)
summary(dat)
str(dat) #Str ==> structure NOT string


#Function for the analysis of the data
country_name <- subset(dat,dat$country == "Uganda") #First create a subset of the column we want
head(country_name)
summary(country_name)

#Calculate the min, max and mean
min(dat$lifeExp)
max(dat$lifeExp)
mean(dat$lifeExp)

#or
min(country_name[,5])
max(country_name[,5])
mean(country_name[,5])

#Now we make the function
analyze <- function(country){
  country_name <- subset(dat, dat$country == country)
  print(min(country_name[,5]))
  print(max(country_name[,5]))
  print(mean(country_name[,5]))
}

analyze("Uganda")