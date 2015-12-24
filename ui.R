library(shiny)

shinyUI(bootstrapPage(
    
    selectInput(inputId = "n_breaks",
                label = "Number of bins",
                choices = c(10, 20),
                selected = 10),
    
    checkboxInput(inputId = "density",
                  label = strong("density line"),
                  value = FALSE),
    
    plotOutput(outputId = "main_plot", height = "300px"),
    
    conditionalPanel(condition = "input.density == true",
                     sliderInput(inputId = "bw_adjust",
                                 label = "Bandwidth adjustment:",
                                 min = 0.2, max = 2, value = 1, step = 0.2)),
    mainPanel(
        h3('documentation for how to use this app'),
        h3('Introduction: This is a histogram for mtcars$mpg'),
        h3('Step 1: choose how many bins you want'),
        h3('Step 2: choose if you want to show the density line'),
        h3('Step 3: You can adjust the density line'),
        h3('Thank You For Using!')
    )
    
))