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
  
  out_plot <- plot(country_year,country_life,ylab = "Life expectancy", xlab= "Year", main= countr)  
  print(out_plot)
}

analyze("Uganda") #colera epidemic
analyze("Somalia")  #genocide
analyze("Venezuela")
analyze("Uruguay")
analyze("Italy")
analyze("Germany")
analyze("Serbia")

#Modify the function to loop over several countries
#For loop

best_practices <- c('write','programms','for','people','not','computers')


for(n in best_practices){
  print(n)
}

best_practices_fun2 = function(best_practices){
  for(n in best_practices){
    print(n)
  }
}

best_practices_fun2(best_practices)


#Generate a file called gapminder_52_97 that contains years "1952" and "1997", and another file called
#gapminder_67_07 that contains years "1967" and "2007". Hint: use subset
#subset(dat, dat$country = "Uganda")

gapminder_52_97 <- subset(dat, dat$year == 1952 | dat$year == 1997)
head(gapminder_52_97)

gapminder_67_07 <- subset(dat, dat$year == 1967 | dat$year == 2007)
head(gapminder_67_07)


#Writing the dataset

write.csv(file = "data/gapminder_52_97.csv", gapminder_52_97, row.names = FALSE, quote = FALSE)
write.csv(file = "data/gapminder_67_07.csv", gapminder_67_07, row.names = FALSE, quote = FALSE)




