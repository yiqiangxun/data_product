library(shiny)
shinyServer(function(input, output) {
    
    output$main_plot <- renderPlot({
        
        hist(mtcars$mpg,
             probability = TRUE,
             breaks = as.numeric(input$n_breaks),
             xlab = "Miles per gallon",
             main = "let's see the car mpg density line")
        
        if (input$density) {
            dens <- density(mtcars$mpg,
                            adjust = input$bw_adjust)
            lines(dens, col = "blue")
        }
    })
    

})
