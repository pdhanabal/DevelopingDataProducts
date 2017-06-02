#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
    h1("Shiny Application and Reproducible Pitch - PD - 6/2/2017"),
    h2("Euro's value against US Dollar during the Month of May"),
  titlePanel("USD Vs EUR"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        sliderInput("bins",
                   "Euro Value on 2017-May-", min = 1, max = 31,    value = 30),

       checkboxInput("show_line","Draw/Hide Line", value=TRUE)


    ),

    # Show a plot of the generated distribution
    mainPanel(
        h1("May 2017 Chart"),
       plotOutput("distPlot")


    )
  )
))
