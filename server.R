require(shiny)
require(quantmod)
require(dygraphs)
require(googleVis)
require(data.table)

shinyServer(function(input, output, session){
    
    # activate Chart Tab on first click of Load-Button
    observe({
        if(input$loadButton == 1)
        {
            updateTabsetPanel(session, "plotPanel", selected = "chartTab")
        }
    })
    
    # get Title for Stock Symbol
    output$stockTitle <- renderText({
        
        input$loadButton
        if(isolate(input$stock) != ""){
            paste(isolate(getQuote(input$stock, what=yahooQF("Name"), warnings = FALSE)[,2]))
        }

    })
    
    
    # Load Stock Data from Yahoo
    dataInput <- reactive({
  
        getSymbols(input$stock, from = "2000-01-01"
                  ,auto.assign = FALSE, warnings = FALSE)
        
    }) 

    
    # Plot Price Chart
    output$chart <- renderDygraph({
        
        input$loadButton
        if(isolate(input$stock) != ""){
            
            if(input$scale == "log"){
                logScale <- TRUE
            }
            else {
                logScale <- FALSE
            } 
            
            if(input$style == "candle") {
                dygraph(isolate(dataInput())[,1:4], group = "stock") %>%
                    dyOptions(plotter = "candlePlotter"
                             ,logscale = logScale) %>%
                    dyLegend(show = "onmouseover", hideOnMouseOut = TRUE
                            ,labelsSeparateLines = TRUE)
            }
            else {
                dygraph(isolate(dataInput())[,6], group = "stock") %>%
                    dyOptions(plotter = "Dygraph.Plotters.linePlotter"
                             ,logscale = logScale) %>%
                    dyLegend(show = "onmouseover", hideOnMouseOut = TRUE)
            }
        }
    })
    
    # Plot Volume Chart with Range selector
    output$vol <- renderDygraph({
        
        input$loadButton
        if(isolate(input$stock) != ""){

            dygraph(isolate(dataInput())[,5], group = "stock") %>%
                dyOptions(drawXAxis = FALSE) %>%
                dyRangeSelector()
        }
        
    })

    # Plot Calender of Daily returns
    output$Cal <- renderGvis({
        
        input$loadButton
        
        if(isolate(input$stock) != ""){
                
            ret.df <- data.frame(date=index(isolate(dataInput())[paste0(input$year,"/")])
                                ,ret = round(100*coredata(periodReturn(isolate(dataInput())[paste0(input$year,"/")], period='daily')),2))
            gvisCalendar(ret.df
                        ,datevar = "date"
                        ,numvar  = "daily.returns"
                        ,options = list(title = "Daily Returns"
                                       ,height = 575
                                       ,width  = 865
                                       ,calendar = "{yearLabel: {fontName: 'Times-Roman'
                                                                ,fontSize: 32
                                                                ,color: '#1A8763'
                                                                ,bold: true}
                                                    ,cellSize: 15
                                                    ,cellColor: {stroke: 'red'
                                                                ,strokeOpacity: 0.2 }
                                                    ,focusedCellColor: {stroke:'red'}
                                                    }"
                                       )
            )
        }
    })

})