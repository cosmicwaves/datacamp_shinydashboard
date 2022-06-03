# Server-side dynamic how-to ----

server <- function(input, output, session){
  reactive_data <- reactiveFileReader(
    intervalMillis = 1000,
    session = session,
    filePath = "file.csv",
    readFunc = read.csv()
  )
}


server <- function(input, output, session){
  ...
  output$printed_data <- renderPrint({
    reactive_data()
  })
}