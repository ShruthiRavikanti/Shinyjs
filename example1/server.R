library("shiny")
library("shinyjs")

shinyServer(function(input, output, session){
  
  delay(60000, hide("t")) #this will hide the text for 60sec
  # hide is shinyjs function that hides the element
  
  #For alert message
  observeEvent(input$alert,
               alert("This is an alert message.This is my first shiny app"))
  # alert is shiny js function to throw an alert message
  
  
  #for show/hide slider
  observeEvent(input$hides,
               hide("slider")) # hide() is a shinyjs function
  
  observeEvent(input$shows,
               show("slider")) #show() is a shinyjs function
  
  #for show/hide text
  observeEvent(input$showh,
               show("txt")) # show() is shiny js function
  
  observeEvent(input$hideh,
               hide("txt")) # hide() is shiny js function
  
  #for show/hide slider
  observeEvent(input$disable,
               disable("able")) # disable() is a shinyjs function
  
  observeEvent(input$enable,
               enable("able")) #enable() is a shinyjs function
  
  # rendering the plot
  output$plot <- renderPlot({
    plot(mtcars$mpg)
     })  
  observeEvent(input$button,
               toggle("plot"))
  
  
  
  
}
)