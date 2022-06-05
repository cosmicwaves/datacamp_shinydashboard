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

# UI Dynamic how-to ----

messages <- apply(data, 1, function(row){
  messageItem(from = row[["from"]],
              message = row[["message"]])
})
dropdownMenu(type = "message", .list = messages)



server <-  function(input, output){
  output$msg_menu <- renderMenu({
    messages <- apply(data, 1, function(row){
      messageItem(from = row[["from"]],
                  message = row[["message"]])
    })
    dropdownMenu(type = "messages", .list = messages)
  })
}

header <- dashboardHeader(dropdownMenuOutput("msg_menu"))


