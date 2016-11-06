#Clear my console
ls()  #This shows the variables on the console
rm(list = ls()) #This clears the variable on the console

#Functions
?mean
?sd
?max

#total function
#function components:
##Name
##Statement
##Argument
##Body
##Return statement (optional)

my_sum <- function(input_1,input_2){
  input_1 = 3
  input_2 = 4
  tot = input_1 + input_2
  return(tot)}

my_sum(input_1,input_2)


#Best practice to call functions:
my_sum <- function(input_1,input_2){
  tot = input_1 + input_2
  return(tot)} #Return is optional in R

my_sum(input_1=2,input_2=4)
my_sum(input_1=6,input_2=11)
my_sum(input_1=11,input_2=11)

#Btw don't call the functions with names that R already has because it can cause errors
#Also, changes in this window are also going to be saved in git

#Converting fahrenheit to kelvin
fah_to_kelvin <- function (temp) {
  kelvin = ((temp - 32) + (5/9)) + 273.15
  return(kelvin)
  }
#We always define functions in R with the word function(variablex,variabley,...),
#followed by {}

kelvin_to_cel <- function(temp){
  celsius <- temp -273.15
  return(celsius)
}

#Exercise
#Function to convert fah to celsius

fah_to_celsius <- function(temp){
  fah = ((temp - 32) * (5/9)) 
  return(fah)
}

##Call functions on a different script. In R is a good practice to keep all
##functions separated on a different script from the rest of the data


#To get functions on another script use source followed to the name of the file and the file extension (R)
source("fah_to_cel_functions.R") 

fah_to_kelvin(temp=32)
kelvin_to_cel(0)
fah_to_celsius(temp=52)





#Exercise2

best_practices <- c('write','programms','for','people','not','computers')
asterix <- "***"

#Write function called "fence" that takes two arguments and writes a new vector with asterix in both ends

fence <- function(arg1,arg2){
  #out = c(arg2,arg1,arg2)
  out = c(asterix,best_practices,asterix)
  return(out)
}

fence(arg1=best_practices,arg2=asterix)

#Something using a real dataset
dir.create("data") #create a directory called data
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv",destfile = "data/gapminder.csv")

?dir.create #Get information about dir.create by typing ? before function

