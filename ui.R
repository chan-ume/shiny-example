library(shiny)

shinyUI(fluidPage(
  
  titlePanel("numericInput"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("numericInputData",
                   "irisデータでヒストグラムを表示する列番号",
                   min = 1,
                   max = 4,
                   value = 1),
    sliderInput("sliderInputData",
                 "Number of bins:",
                 min = 1,
                 max = 50,
                 value = 30)
    ),
    
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
