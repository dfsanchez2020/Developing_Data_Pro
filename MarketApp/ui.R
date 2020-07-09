# This is mi first app on shiny
# Diego Fernando Sanchez Ramos
# 09/07/2020

library(shiny)

shinyUI(fluidPage(
    titlePanel("Mercados con R"),
    sidebarLayout(
        sidebarPanel("Seleccione la acción que desea consultar",
                     selectInput("accion",
                                 label = "Acción",
                                 choices = c("Apple"="AAPL", "Cisco"="CSCO",
                                             "IBM"="IBM", "Facebook"="FB",
                                             "Twitter"="TWTR", "Microsoft"="MSFT",
                                             "Google"="GOOG"))
                     
        ),
        mainPanel("Gráfico de Acciones del Mercado de valores Americano",
                  plotOutput("grafico")
        ))))     