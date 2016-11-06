#Something using a real dataset
dir.create("data") #create a directory called data
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv",destfile = "data/gapminder.csv")

?dir.create #Get information about dir.create by typing ? before function

