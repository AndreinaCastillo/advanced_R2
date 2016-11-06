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

countries <- c("Norway","Japan","Chad")

country_select(countries)

# Stats, mean min max of LifExp for each continent 
#print( levels(dat$continent))
#print(head(funsies))
funsies <- levels(dat$continent)
continent_LifeExp <- function(funsies){
  for(f in funsies){
    continent_subset <- subset(dat, dat$continent == f)
    out<-c("Mean_is" = mean(continent_subset$lifeExp),
           "Max_is" = max(continent_subset$lifeExp),
           "Min_is" = min(continent_subset$lifeExp))
    
    print(f)
    print(out)
  }
 
}

continent_LifeExp(funsies)

