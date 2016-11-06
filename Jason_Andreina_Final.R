#Load file and select data for three countries (Guam, Norway, Germany)

dat <- read.csv("data/gapminder.csv",header=TRUE)
head(dat)
summary(dat)
str(dat) #Str ==> structure NOT string

#Plots year vs.GDP

country_select <- function(countries){
  for (countr in countries){
    country_subset <- subset(dat, dat$country == countr)
    #print(country_subset)
    plot(country_subset$year,country_subset$gdpPercap,ylab = "GDP", xlab= "Year", main= countr)
  }
}

countries <- c("Norway","Japan","Germany")

country_select(countries)


