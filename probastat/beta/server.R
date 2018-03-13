library(shiny)

f <- function (x, a, b) x^(a-1)*(1-x)^(b-1)
x <- seq (0.01, 0.99, 0.001)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

  y <- f (x, input$a, input$b) / beta (input$a, input$b)
   plot (x, y, type='l', col='red', ylim=c(0,15))
  })

})