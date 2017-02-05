library(shiny)
shinyUI(fluidPage(
  
  titlePanel(title = h1("Second Shiny App..!! : Testbox Input")),
  
  sidebarLayout(
                
                sidebarPanel(h2("Enter the personal information"),
                      
                            textInput(inputId="name",label = "Enter Your Name",value = ""),
                            textInput(inputId="age", label = "Enter Your Age", value = ""),
                            radioButtons(inputId="gender",label = "Select the gender","",choices = list("male","female"))
                ),
                mainPanel(h1("Personal Information"),
                          
                          textOutput("myName"),
                          textOutput("myAge"),
                          textOutput("myGender")
                          
                          )
                
  )
  
)

)