library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(fresh)
library(tidyverse)
library(ggplot2)
library(leaflet)
library(raster)
library(leaflet.extras)

# Define UI
ui <- fluidPage(
  titlePanel("Interactive Map with Image Overlay"),
  leafletOutput("imageMap", width = "100%", height = "600px")
)

# Define Server
server <- function(input, output, session) {
  output$imageMap <- renderLeaflet({
    # Define the bounds of the image (in pixels or logical units)
    image_bounds <- list(
      c(0, 0),          # Bottom-left corner: ymin, xmin
      c(742, 1224)      # Top-right corner: ymax, xmax
    )
    
    # Create the Leaflet map
    leaflet() %>%
      addTiles() %>%  # Optional: Add a basemap for context
      addRasterImage(
        "www/map_image.png", # File path in 'www' folder
        opacity = 0.8,
        bounds = image_bounds,
        project = FALSE
      ) %>%
      fitBounds(lng1 = 0, lat1 = 0, lng2 = 1224, lat2 = 742)
  })
}

# Run the Shiny app
shinyApp(ui, server)
