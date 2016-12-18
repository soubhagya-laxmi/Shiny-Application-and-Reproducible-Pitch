library(shiny)
  shinyServer(function(input, output) {
  
    model1 <- lm(weight ~ height, data = women)
    model1pred <- reactive({
      HeightInput <- input$sliderHeight
      predict(model1, newdata = data.frame(height = HeightInput))
  })
  
  output$plot1 <- renderPlot({
   
    plot(women$weight,women$height, xlab = "weight(lbs)",
         ylab = "Height(in)", main = "predicted Weight",type = "o",
         cex = 1.5, pch = 16, bty = "n", col="red")
    abline(model1, col = "red", lwd = 2)
    
   
  })
  output$pred1 <- renderText({
    model1pred()
  })
  
  }) 
