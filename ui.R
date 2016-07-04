library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('USArrests k-means clustering'),
    sidebarPanel(
    p('This data set contains statistics, in arrests per 100,000 
      residents for assault, murder, and rape in each of the 50 US 
      states in 1973. Also given is the percent of the population living 
      in urban areas'),
    p('Select the variables below and the number of clusters
      to check the group of cities in USA according to arrest types'),
      
    selectInput('xcol', 'X Variable', names(USArrests)),
    selectInput('ycol', 'Y Variable', names(USArrests),
                selected=names(USArrests)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    h2('Plot of the City Arrest Clusters'),
    plotOutput('plot1')
  )
))
