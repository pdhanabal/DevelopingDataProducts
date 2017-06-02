#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  usdeur<-read.csv("USDEUR.csv",header=TRUE)

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x <- usdeur$Date
    y <- usdeur$Price
    bins <- seq.int(1,31)
    minX <- 1
    maxX <- 31
    minY <- 0.5
    maxY <- 2.0
    xlab <- ifelse(input$show_line,"May 2017","")

    plot(x,y,xlab = "May 2017",ylab = "$ Vs EUR", col = "red")
    if (input$show_line) { lines(x,y, col= "green", pch=22) }
    grid()
    })

  output$val = renderText(usdeur$Price[input$bins])


})
