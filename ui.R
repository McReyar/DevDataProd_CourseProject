require(shiny)
require(dygraphs)

# Define UI for miles per gallon application
shinyUI(
    navbarPage(title = "Stock Charts", id = "stockCharts"

       ,tabPanel(title = "Create Charts", value = "mainPanel"
                       
            ,fluidRow(
                    column(6
                       ,textInput("stock", "Stock Symbol", value = "")
                       ,actionButton("loadButton", "Load")
                    )
                   ,column(3
                       ,radioButtons("scale", "Scale:"
                                   ,list("linear scale" = "lin"
                                        ,"log scale" = "log"))
                    )
                   ,column(3
                       ,radioButtons("style", "Style:"
                                    ,list("Line" = "line"
                                    ,"Candlestick" = "candle"))
                    )
             )
                
            # Show the caption and plot of the requested variable against mpg
            ,fluidRow(
                column(12,h3(textOutput("stockTitle")))
             )
            ,fluidRow(
                column(12,
                   tabsetPanel(id = "plotPanel", selected = "helpTab"
                        ,tabPanel(title = "Chart", value = "chartTab"
                           
                            # function for candlestick plot
                            ,tags$head(tags$script(src = "js/candleplotter.js"))
                            
                            ,dygraphOutput("chart")
                            
                            ,dygraphOutput("vol", height="40px")
                        )
                        ,tabPanel(title = "Calendar", value = "calTab"
                                  
                            ,sliderInput("year", label = h3("Year")
                                        ,min = 2000, max = 2014, value = 2011
                                        ,format = "0000")
                            ,htmlOutput("Cal")
                        )
                        ,tabPanel(title = "Help", value = "helpTab"
                            ,fluidRow(
                                 column(6
                                    ,h6("Stock Symbol:") 
                                    ,helpText("Input Yahoo Stock Symbol for a share (e.g. AXP for American Express, BA for Boing, CAT for Caterpillar, etc.")
                                    ,helpText("After clicking the Load-Button the chart is shown based on financial data from Yahoo.)")
                                )
                                ,column(3
                                    ,h6("Scale:")
                                    ,helpText("Prcies shown on a linear or logarithm axis.")
                                )
                                ,column(3
                                    ,h6("Style:")
                                    ,helpText("Show price as line (adjusted price that considers splits and dividends) or as candlestick chart (that shows open, close, low and high prices for each day)")
                                )
                            )
                            ,fluidRow(
                                 column(6
                                    ,h6("Chart:")
                                    ,helpText("Chart of share prices - trading volumnes are shown beyond the chart.")
                                    ,helpText("Zooming in to a timespan can be done by adjusting the slider on the volume chart or by clicking and draging. Double-clicking on the main chart will zoom you back out.")
                                )
                                ,column(6
                                    ,h6("Calendar:")
                                    ,helpText("Daily total returns of the share in percent.")
                                    ,helpText("By adjusting the slider, the four years that should be shown, can be selected.")
                                )
                            )
                        )
                        
                       
                   )
                        
                )
            )
        )
#         ,tabPanel("About"
#             ,fluidRow(
#                 column(12
#                    ,htmlOutput("Cal")
#                 )
#             )
#         )
    )
)
