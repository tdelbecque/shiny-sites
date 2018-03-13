library(shiny)

handler <- function (input, output) {
    tex <- function (s) paste ("\\(", s, "\\)", sep='')

    nSetLower <- 3
    nSetUpper <- 6
    nCardLower <- 3
    nCardUpper <- 9
    
    nSet <- sample (nSetLower:nSetUpper, size=1)
    cards <- sample (nCardLower:nCardUpper, size=nSet)

    cardinaux = c ()
    for (i in 1:nSet)
        cardinaux = c (cardinaux,
                       sprintf ("<li>%s</li>",
                                tex (sprintf ("|E_%d| = %d",
                                              i, cards[i]))))
    
    enonce <- paste (
        "<div>",
        "<p>",
        sprintf ("Soient %s ensembles %s.",
                 tex (nSet),
                 tex (sprintf ("E_1\\cdots E_%s", nSet))),
        "Les cardinaux de chacun de ces ensembles sont les suivants:",
        "</p>",
        "<ul>",
        "<div>",
        paste (cardinaux, collapse='\n'),
        "</div>",
        "</ul>",
        sprintf ("<p>Combien existe-t-il d'ensembles %s à %s éléments obtenus en sélectionnant chaque élément dans un ensemble %s distinct ?</p>",
                 tex ("A"),
                 tex (nSet),
                 tex ("E_i")),
        "</div>", sep="\n")
    
    output$enonce <-  renderUI (
        HTML (enonce)
    )
}

shinyServer (handler)
