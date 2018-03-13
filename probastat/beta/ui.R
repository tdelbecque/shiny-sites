library(shiny)

f <- paste ("$$",
       "\\begin{eqnarray}",
       "\\Gamma(x) & \\stackrel{def}{=} & \\int_0^\\infty t^{x-1}e^{-t}dt & \\hskip 2cm(1)\\\\",
       "& & \\\\",
       "B (p,q) & \\stackrel{def}{=} & \\int_0^1 t^{p-1}(1-t)^{q-1}dt & \\hskip 2cm(2)\\\\", 
       "& = & \\frac{\\Gamma(p)\\Gamma(q)}{\\Gamma(p+q)} & \\hskip 2cm(2.bis) \\\\",
       "& & \\\\",
       "B (x, p, q) & \\stackrel{def}{=} & \\frac{x^{p-1}(1-x)^{q-1}}{B(p, q)},\\ \\forall x \\in ]0,1[ & \\hskip 2cm(3)",
       "\\end{eqnarray}",
       "$$", sep="\n")

# Define UI for application that plots random distributions 
shinyUI(fluidPage(
    theme = "style.css",
  withMathJax (),
  
  # Application title
  headerPanel("Distribution Béta"),
  helpText ("Les fonctions \\(\\Gamma\\) et \\(B\\) ainsi que la distribution de la loi Beta sont définies ainsi: "),
  helpText (f),
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    sliderInput("a",
                  "\\(p\\):",
                  min = 0.1,
                  max = 100,
		  step=0.1,
                  value = 10),
		  
    sliderInput("b",
                  "\\(q\\):",
                  min = 0.1,
                  max = 100,
		  step=0.1,
                  value = 10)
		  
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot", height=250)
    
  )
))
