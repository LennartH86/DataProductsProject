require(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Data Products Project: Who Got The Goals?"),
        sidebarPanel(
                 sliderInput("Year", "Election year to be displayed:", 
                             min=1960, max=2012, value=1960,  step=4,
                             sep="",animate=TRUE)
                ),

        mainPanel(
                h3(textOutput("year")), 
                htmlOutput("gvis"),
                p(textOutput("winner")),
                p(textOutput("runnerup")),
                br(),
                br(),
                div("Unfortunately this map does not support the countries withing Great Britain, therefore goals of the English football team are displayed as Great Britain and goals of Scotland can not be shown.",
                        style= "font-size: 10px; color:grey"),
                br(),
                div("Turkey did score 0 goals in 1996, 3 goals in 2000 and 8 goals in 2008. They can not be shown because Turkey is no part of Europe in this map.",
                    style= "font-size: 10px; color:grey"),
                br(),
                br(),
                div("This Shiny App uses Google Vis to visualize data on a map. 
                    The integration of Google Vis into Shiny is taken from mages' block, 
                    please see: ", a("http://www.magesblog.com/2013/02/first-steps-of-using-googlevis-on-shiny.html"),
                    style= "font-size: 10px; color:grey")
                )
        )
)