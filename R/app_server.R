library(titan)

## create a gauge to track the current number of visitors on the application ====

g <- Gauge$new(
  "visitors_total",
  "Current number of visitors"
)


## server ====
#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  g$inc()
}
