library(shiny) 
library(ggplot2)

shinyServer(function(output,input){
  
  var <- reactive({
    
    switch (input$data1,
            "iris" = names(iris),
            "mtcars" = names(mtcars),
            "trees" = names(trees)
    )
    
    
  })
  
  output$vx <- renderUI({
    selectInput("variableX","Select the First (X) variables",choices = var())
  })
  
  output$vy <- renderUI({
    selectInput("variableY","Select the First (Y) variables",choices = var())
  })
  
  output$p <- renderPlot({
    attach(get(input$data1))
    plot(x=get(input$variableX),y=get(input$variableY),xlab = input$variableX,ylab = input$variableY)
    
    
  })
  
  
  
  
}
  
  
  
  )