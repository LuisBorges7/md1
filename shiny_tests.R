library(shiny)

ui <- fluidPage(
  titlePanel("Estruturação"),
  sidebarLayout(
    sidebarPanel(
      h2("Area de entrada de dados" ),
      textInput("idInputText", "Digite o texto")
    ),
    mainPanel(
      h2("Area de saida de dados"),
      textOutput("idOutputText")
    )
  )
)

server <- function(input, output, session) {
  output$idOutputText <- renderText({input$idInputText})
}

shinyApp(ui, server)