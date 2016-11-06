#Fahrenheit to kelvin
fah_to_kelvin <- function (temp) {
  kelvin = ((temp - 32) + (5/9)) + 273.15
  return(kelvin)
}

fah_to_kelvin(temp=32)
fah_to_kelvin(32)


#Kelvin to celsius
kelvin_to_cel <- function(temp){
  celsius <- temp -273.15
  return(celsius)
}

kelvin_to_cel(0)

#Fah to celsius
fah_to_celsius <- function(temp){
  fah = ((temp - 32) * (5/9)) 
  return(fah)
}

fah_to_celsius(temp=52)

#It is a better practice to commit files and frames and all independently and by small
#degrees. Otherwise i might be confusing for your future self. :p


