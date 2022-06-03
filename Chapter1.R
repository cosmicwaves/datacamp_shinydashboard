install.packages("shinydashboard")
library("shinydashboard")
library(shiny)

# Creating UI and Server ----

header <- dashboardHeader()
sidebar <- dashboardSidebar()
body <- dashboardBody()

ui <- dashboardPage(header, sidebar, body)

server <- function(input, output){}

shinyApp(ui, server)

# Dashboard ----

## Dashboard Header ----

header <- dashboardHeader(
  dropdownMenu(
    type = "messages",
    messageItem(
      from = "Murat",
      message = "Check out datacamp!",
      href = "http://www.datacamp.com"
    ),
    messageItem(
      from = "Murat",
      message = "Check out datacamp!",
      href = "http://www.datacamp.com"
    )
    )
  )


header <- dashboardHeader(
  dropdownMenu(
    type = "notifications",
    notificationItem(
      text = "Check out datacamp!",
      href = "http://www.datacamp.com"
    )
  )
)


header <- dashboardHeader(
  dropdownMenu(
    type = "tasks",
    taskItem(
      text = "Look at your data camp progress!",
      value = 15
    )
  )
)

## Sidebar ----

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem(
      "Data",
      tabName = "data"
    ),
    menuItem(
      "Dashboard",
      tabName = "dashboard"
    )
  )
)


## Body ----

body <- dashboardBody(
  tabItems(
    tabItem(tabName = "data",
            "Input data here"),
    tabItem(tabName = "dashboard",
            "Look at my cool dashboard")
  )
)

body <- dashboardBody(
  tabBox(
    title = "My first box",
    tabPanel("Tab1", "Content for the first tab"),
    tabPanel("Tab2", "Content for the second tab")
  )
)

# Reactive Expression ----

selectInput(
  inputId = "favorite_character",
  label = "Favorite Character",
  choices = c("Leia", "Luke", "Han")
)

# Render Functions ----
renderPrint()
renderText()
renderTable()
renderDataTable()
renderPlot()
renderImage()
renderUI()


server <- function(input, output){
  output$printed_object <- renderPrint({
    "print me"
  })
}


selec