### example1

setwd("C:/Users/Lenovo/Desktop/data science/shinyjs/example1")

#install.packages("shinyjs")
library("shinyjs")
library("shiny")


shinyUI(fluidPage(
  
  useShinyjs(), #for shinyjs 
  titlePanel("shinyjs- hide, show, toggle, hidden, alert, delay, enable, disable elements in R Shiny"),
  h4("Add common javascript capabilities to shiny app "),
  hr(),
  
  tags$div(id='s',
           style='color:green;',
           h4("Hello and welcome to this demo! This is a welcome message. It will disappear in 60 seconds"),
           hr()
           ),
  
  
  
  fluidRow(
    column(width=2,
           actionButton(" alert","Click to alert")
           ),
    
    column(width=3, style= "outline-style:groove;outline-width:thin;",
           actionButton("hides","Hide Slider"),
           actionButton("shows","Show Slider"),
           sliderInput("slider","Slider",min = 0,max=10,value=5)
           ),
    
    column(width=3, 
           actionButton(inputId = "showh", label = "Show hidden text"),
           actionButton(inputId = "hideh", label = "Hide text"),
           
           hidden(tags$div(id="txt",helpText("This is a help text.You can hide me")))
           # hidden is a shinyjs function
           ),
    
    column(width=3, style= "outline-style:groove;outline-width:thin;",
           actionButton("disable" , "Disable"),
           actionButton("enable" , "Enable"),
           sliderInput("able", "Slider", min = 0, max = 10, value = 5)
           )
      ),
  
  fluidRow(
    column(4,
           hr(),
           actionButton("button","Click and toggle the polt"),
           plotOutput("plot"))
        )
  
    )
  )