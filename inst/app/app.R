suppressPackageStartupMessages({
    library(caret)
    library(clusterProfiler)
    library(data.table)
    library(dplyr)
    library(ELMER)
    library(ggplot2)
    library(ggrepel)
    library(grid)
    library(htmlwidgets)
    library(maftools)
    library(MultiAssayExperiment)
    library(pathview)
    library(plotly)
    library(readr)
    library(reshape2)
    library(sesame)
    library(sesameData)
    library(shiny)
    library(shinyBS)
    library(shinydashboard)
    library(shinyFiles)
    library(shinyjs)
    library(stringr)
    library(SummarizedExperiment)
    library(TCGAbiolinks)
    library(TCGAbiolinksGUI.data)
})

ui <- navbarPage(
    source(file.path("ui", "ui.R"),  local = TRUE)$value
)

server <- function(input, output, session) {
    # Include the logic (server) for each tab
    source(file.path("server", "server.R"),  local = TRUE)$value
}
shinyApp(ui = ui, server = server)
