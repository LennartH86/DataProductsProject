require(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Data Products Project: Who Got The Goals?"),
        sidebarPanel(
                 sliderInput("Year", "Year of the UEFA European Championship:", 
                             min=1960, max=2012, value=1960,  step=4,
                             sep="",animate=TRUE)
                ),

        mainPanel(
                tabsetPanel(
                        tabPanel("Visualization",
                                h3(textOutput("year")), 
                                htmlOutput("gvis"),
                                p(textOutput("winner")),
                                p(textOutput("runnerup"))
                       
                        ),
                        tabPanel('Readme',
                                 h5('This app shows all goals from the participants of the UEFA Euopean Championship in football, visualized on a map of Europe. To select the year of the Championship use the slider to the left. You can hover over the countries of Europe and see in a tooltip how my goals they scored. Furthermor, the winner and runner-up of each championship are presented.'),
                                 br(),
                                 div("Unfortunately this map does not support the countries within Great Britain, therefore goals of the English football team are displayed as Great Britain and goals of Scotland can not be shown."),
                                 br(),
                                 div("Turkey did score 0 goals in 1996, 3 goals in 2000 and 8 goals in 2008. They can not be shown, because Turkey is not a part of Europe in this map."),
                                 br(),
                                 br(),
                                 div("This Shiny App uses Google Vis to visualize data on a map. 
                                        The integration of Google Vis into Shiny is taken from mages' block, 
                                        please see: ", a("http://www.magesblog.com/2013/02/first-steps-of-using-googlevis-on-shiny.html"))
                        )
                )
        )
        
 
        )
        
)