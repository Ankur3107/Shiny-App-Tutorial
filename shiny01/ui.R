library(shiny)
shinyUI(fluidPage(
  
  titlePanel(title = "First Shiny App..!!"),
  sidebarLayout(position='right',
    
    sidebarPanel(h3("this is sidebar panel"),h3("this is sidebar panel")),
    mainPanel(h1("output is display here"),h1("output is display here"))
    
  )
  
)
  
)