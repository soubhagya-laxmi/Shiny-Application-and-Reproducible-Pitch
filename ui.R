library(shiny)
shinyUI(fluidPage(
  titlePanel("Predicted weight for Women"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderHeight", "Enter the Height?",58,72,0),
      submitButton("Submit")
        ),
    mainPanel(
      plotOutput("plot1"), 
      h3("Predicted Weight"),
      textOutput("pred1")
      )
      )
))
