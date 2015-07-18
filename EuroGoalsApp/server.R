# Lennart Heuckendorf, July 2015, based on
# Markus Gesmann, February 2013
require(googleVis)
require(shiny)
## Prepare data to be displayed
library(RCurl)
url <- "https://raw.github.com/LennartH86/DataProductsProject/master/data/GoalsEuroCup.csv"
data <- getURL(url, ssl.verifypeer=0L, followlocation=1L)

data <- read.csv(text=data, sep=";")
#data <- read.csv("data/GoalsEuroCup.csv", sep=";")
## Add min and max values to the data
dataminmax = data.frame(Country=rep(c("Min", "Max"),14),
                       Year=sort(rep(seq(1960,2012,4),2)), 
                       Goals=rep(c(0, 14),14),
                       Winner=rep(NA,14),
                       Runnerup=rep(NA,14))
data<- rbind(data, dataminmax)

shinyServer(function(input, output) {
        myYear <- reactive({
                input$Year
        })
        myWinner <- reactive({
                myData <- subset(data, 
                       (Year > (myYear()-1)) & (Year < (myYear()+1)) & !(Winner== ""))
                myData[,4]
        })
        myRunnerup <- reactive({
                myData <- subset(data, 
                       (Year > (myYear()-1)) & (Year < (myYear()+1)) & !(Runnerup == ""))
                myData[,5]
        })
        output$winner <- renderText({
                paste("Winner : ", myWinner())
        })
        output$runnerup <- renderText({
                paste("Runner-up : ", myRunnerup())
        })
        output$year <- renderText({
                paste("Which Countries scored most Goals in the Euro Football Cup ", myYear())
        })
        output$gvis <- renderGvis({
                myData <- subset(data, 
                                 (Year > (myYear()-1)) & (Year < (myYear()+1)) & !is.na(Goals))
                gvisGeoChart(myData,
                             locationvar="Country", colorvar="Goals",
                             options=list(region='150', displayMode="regions", 
                                          resolution="countries",
                                          width=500, height=400,
                                          colorAxis="{colors:['#FFFFFF', '#0000FF']}",
                                          magnifyingGlass="{enable: true, zoomFactor: 40}",
                                          datalessRegionColor="white"
                             ))     
        })
})