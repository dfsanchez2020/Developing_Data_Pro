# This is mi first app on shiny
# Diego Fernando Sanchez Ramos
# 09/07/2020

library(quantmod)
shinyServer(function(input, output){
    output$grafico <- renderPlot({
        stockdata <- getSymbols(input$accion, src = "yahoo",
                                from = "2020-01-01", to = "2020-07-08",
                                auto.assign = FALSE)
        candleChart(stockdata, name=input$accion)
    })
})