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
  print(mean(country_name[,5]))
  print(min(country_name[,5]))
  print(max(country_name[,5]))
  
  out2 <- c("Mean_is" = mean(country_name[,5]), "Min_is" = min(country_name[,5]), "Max_is" = max(country_name[,5]))
  print(out2)
  }
analyze("Uganda")


#alternatively you can code it like this
analyze <- function(countr){
  country_name <- subset(dat, dat$country == countr)
  #print(mean(country_name$lifeExp))
  #print(min(country_name$lifeExp))
  #print(max(country_name$lifeExp))
  
  out <- c("Mean_is" = mean(country_name[,5]), 
           "Min_is" = min(country_name[,5]), 
           "Max_is" = max(country_name[,5])
           )
  print(out)
}

analyze("Uganda")
analyze("Venezuela")
analyze("Uruguay")
analyze("Italy")

#Exercise
#Modify the analyze function to generate a plot with Year on x-axis and lifeexp on the y-axis

#alternatively you can code it like this
analyze <- function(countr){
  country_name <- subset(dat, dat$country == countr)
  country_life <- (country_name$lifeExp)
  country_year <- (country_name$year)
  
  out_plot <- plot(country_year,country_life)  
  print(out_plot)
}

analyze("Uganda")


