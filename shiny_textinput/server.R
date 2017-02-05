library(shiny)

shinyServer(function(input,output){
  
  output$myName <- renderText(input$name)
  output$myAge <- renderText(input$age)
  
}

)