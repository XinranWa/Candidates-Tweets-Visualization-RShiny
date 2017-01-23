library(shiny)
library(plotly)
library(rsconnect)
setwd("~/Desktop/visualization_proj")
td <- read.csv("~/Desktop/visualization_proj/IV.csv")

shinyServer(function(input, output) {
 
  
  output$trendPlot1 <- renderPlotly({
      if (input$select1 == "Clinton") {
      p <- plot_ly(x = td$clin_vol, y = td$clinton, text = paste("Volume", td$clin_vol), mode = "markers", color = td$clin_vol, size = td$clin_vol)
      }
      if (input$select1 == "Sanders") {
      p <- plot_ly(x = td$san_vol, y = td$sanders, text = paste("Volume", td$san_vol), mode = "markers", color = td$san_vol, size = td$san_vol)
      }
    if (input$select1 == "Cruz") {
      p <- plot_ly(x = td$cruz_vol, y = td$cruz, text = paste("Volume", td$cruz_vol), mode = "markers", color = td$cruz_vol, size = td$cruz_vol)
    }
    if (input$select1 == "Trump") {
      p <- plot_ly(x = td$trump_vol, y = td$trump, text = paste("Volume", td$trump_vol), mode = "markers", color = td$trump_vol, size = td$trump_vol)
    }
      print(p)
      })
  
  output$trendPlot2 <- renderPlotly({
    if (input$select2 == "Clinton") {
      p <- plot_ly(td, x = td$clin_pro, y = td$clinton, text = paste("Volume", td$clin_vol), mode = "markers", color = td$clin_vol, size = td$clin_vol)
    }
    if (input$select2 == "Sanders") {
      p <- plot_ly(td, x = td$san_pro, y = td$sanders, text = paste("Volume", td$san_vol), mode = "markers", color = td$san_vol, size = td$san_vol)
    }
    if (input$select2 == "Cruz") {
      p <- plot_ly(td, x = td$cruz_pro, y = td$cruz, text = paste("Volume", td$cruz_vol), mode = "markers", color = td$cruz_vol, size = td$cruz_vol)
    }
    if (input$select2 == "Trump") {
      p <- plot_ly(td, x = td$trump_pro, y = td$trump, text = paste("Volume", td$trump_vol), mode = "markers", color = td$trump_vol, size = td$trump_vol)
    }
    print(p)
  })
  
  output$trendPlot3 <- renderPlotly({
    if (input$select3 == "Clinton") {
      p <- plot_ly(td, x = td$clin_pospro, y = td$clinton, text = paste("Volume", td$clin_vol), mode = "markers", color = td$clin_vol, size = td$clin_vol)
    }
    if (input$select3 == "Sanders") {
      p <- plot_ly(td, x = td$san_pospro, y = td$sanders, text = paste("Volume", td$san_vol), mode = "markers", color = td$san_vol, size = td$san_vol)
    }
    if (input$select3 == "Cruz") {
      p <- plot_ly(td, x = td$cruz_pospro, y = td$cruz, text = paste("Volume", td$cruz_vol), mode = "markers", color = td$cruz_vol, size = td$cruz_vol)
    }
    if (input$select3 == "Trump") {
      p <- plot_ly(td, x = td$trump_pospro, y = td$trump, text = paste("Volume", td$trump_vol), mode = "markers", color = td$trump_vol, size = td$trump_vol)
    }
    print(p)
  })
  
  output$trendPlot4 <- renderPlotly({
    if (input$select4 == "Clinton") {
      p <- plot_ly(x = td$clin_re, y = td$clinton, text = paste("Retweet", td$clin_re), mode = "markers", color = td$clin_re, size = td$clin_re)
    }
    if (input$select4 == "Sanders") {
      p <- plot_ly(td, x = td$san_re, y = td$sanders, text = paste("Retweet", td$san_re), mode = "markers", color = td$san_re, size = td$san_re)
    }
    if (input$select4 == "Cruz") {
      p <- plot_ly(td, x = td$cruz_re, y = td$cruz, text = paste("Retweet", td$cruz_re), mode = "markers", color = td$cruz_re, size = td$cruz_re)
    }
    if (input$select4 == "Trump") {
      p <- plot_ly(td, x = td$trump_re, y = td$trump, text = paste("Retweet", td$trump_re), mode = "markers", color = td$trump_re, size = td$trump_re)
    }
    print(p)
  })
  
})