library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    x <- iris[, input$numericInputData] 
    bins <- seq(min(x), max(x), length.out = input$sliderInputData + 1)
    
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
  })
})
