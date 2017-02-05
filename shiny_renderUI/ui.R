library(shiny)
shinyUI(fluidPage(
  
  titlePanel(title = "Shiny App..!!: Dynamic Select | RenderUI"),
  sidebarLayout(
                
                sidebarPanel(
                  
                  selectInput(inputId = "data1", label = "Select the Dataset of your choice", choices = c("iris","mtcars","trees")),
                  br(),
                  helpText("The following selectInput drop down choices are dynamically populated based on the dataset selected by the user above"),
                  br(),
                  uiOutput("vx"),
                  br(),
                  br(),
                  uiOutput("vy")
                ),
                mainPanel(
                  plotOutput("p")
                )
                
  )
  
)

)