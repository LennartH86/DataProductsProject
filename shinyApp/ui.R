require(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Data Products Project: Who Got The Goals?"),
        sidebarPanel(
                 sliderInput("Year", "Election year to be displayed:", 
                             min=1960, max=2012, value=1960,  step=4,
                             format="###0",animate=TRUE)
        ),

        mainPanel(
                h3(textOutput("year")), 
                htmlOutput("gvis"),
                p(textOutput("winner")),
                p(textOutput("runnerup"))
        )
)
)