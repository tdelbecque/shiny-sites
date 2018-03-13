library (shiny)

shinyUI (fluidPage (
    theme = "style.css",
    withMathJax (),
    includeMarkdown ('content.md')
))
