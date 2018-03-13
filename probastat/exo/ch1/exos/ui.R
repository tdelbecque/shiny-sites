library (shiny)

shinyUI (fluidPage (
    theme = "style.css",
    withMathJax (),
    h1("Exercice 1"),
    uiOutput ("enonce"),
    textInput ("answer", "Réponse", ""),
    submitButton ("Envoyer la réponse")
))
