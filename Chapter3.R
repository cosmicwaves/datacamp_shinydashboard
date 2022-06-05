# Bootstrap ----

box(
  width = 12,
  title = "This box takes up the whole row!",
  "A 12 column box"
)

##########
box(
  width = 6,
  title = "This box takes up half a row!",
  "A 6 column box"
)

box(
  width = 6,
  title = "This box takes up half a row!",
  "A 6 column box"
)
## Row - layout ----
fluidRow(
  box(
    width = 6,
    title = "This box takes up", "A 6 column box"
  ),
  box(
    width = 6,
    title = "This box takes up half a row!",
    "A 6 column box"
  )
)

## Column - layout ----

fluidRow(
  column(
    width = 6, # Always put width value in column func
    box(
      width = NULL,
      title = "A", "a"
    ),
    box(
      width = NULL,
      title = "A", "a"
    )
  )
)

## Mixed layout ----

fluidRow(
  box(
    width = 12,
    title = "This box takes up the whole row!",
    "A 12 column box"
  ),
  fluidRow(
    column(width = 6,
            box(
              width = NULL,
              title = "This box takes up half a row!",
              "A 6 column box"
            )
          ),
    column(width = 6,
           box(
             width = NULL,
             title = "This box takes up half a row!",
             "A 6 column box"
           )
  )
)

# Customizing the appearance of the dashboard ----
## Dashboard Skins ----
dashboardPage(
  skin = "green",
  header = header,
  sidebar = sidebar,
  body = body
)

## CSS ----
# either create a seperate file for CSS or use it in script
### A seperate CSS file ----
dashboardBody(
  tags$head(
    tags$link(
      rel = "stylesheet",
      type = "text/css",
      href = "my_style.css"
    )
  )
)

### Inline CSS ----
dashboardBody(
  tags$head(
    tags$style(
      HTML('
           \\CSS here')
    )
  )
)


## Icons ----
icon(name = "bicycle",
     lib = "font-awesome")

icon(name = "refresh",
     class = "fa-5x fa-spin")


?validStatuses
?validColors