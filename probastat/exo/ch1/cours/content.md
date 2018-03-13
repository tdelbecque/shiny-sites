# Rappels sur les ensembles

- Si $a$ est un élément de l’ensemble $E$, $a$ appartient à $E$, on écrit : $a\in E$;  
- Soit $A$ un ensemble dont tous les éléments appartiennent à $E$ : $A$ est une partie de $E$ ou un sous-ensemble de $E$, on écrit : $A\subseteq E$;  
- La réunion $A \cup B$ de deux parties $A$ et $B$ de $E$ est constituée par les éléments qui appartiennent à $A$ ou à $B$ :

$$A\cup B\stackrel{def}{=} \{a\in E\hbox{, tel que } a\in A\hbox{ ou } a\in B\}$$

- L’intersection $A\cap B$ de deux parties $A$ et $B$ de $E$ est constituée par les éléments qui appartiennent à la fois à $A$ et à $B$ : 

$$A\cap B\stackrel{def}{=}\{a\in E\hbox{, tel que }a\in A\hbox{ et }a\in B\}$$

- $A$ étant une partie de $E$, le complémentaire $\bar{A}$ de $A$ dans $E$ est l’ensemble des éléments de $E$ qui n’appartiennent pas à $A$ (on le note aussi $C_E A$) :

$$\bar{A}=C_E A\stackrel{def}{=}\{a\in E\hbox{, tel que } a\notin A\}$$

- Deux ensembles sont disjoints lorsqu’ils n’ont pas d’élément commun : $A\cap B=\emptyset$  
- Les parties d’un ensemble $E$ forment un ensemble noté $P(E)$  
- Les parties non vides $A_1,\ A_2 \cdots,A_n$ constituent une partition de $E$ lorsqu’elles sont disjointes deux à deux et que leur réunion est $E$
- Le cardinal d’un ensemble fini $E$ est le nombre $n$ de ses éléments : $Card (E)= n$
- Si $A_1,A_2,\cdots,A_n$ est une partition de $E$, alors

$$
\begin{eqnarray}
Card (E)&=&Card(A_1)+Card(A_2)+\cdots+ Card(A_n) \\
Card (\bar{A})&=&Card(E)-Card(A) \\
\end{eqnarray}
$$

- Le cardinal de la réunion de deux ensembles disjoints est la somme de leurs cardinaux :  
-- si $A\cap B=\emptyset$, alors $Card(A\cup B)=Card(A)+Card(B)$  
-- Cas général : $Card(A\cup B)=Card(A)+Card(B)-Card(A\cap B)$ (dans la somme des cardinaux de $A$ et $B$, les éléments communs sont comptés deux fois)

# Dénombrer des données : utiliser des arbres, des tableaux, des schémas

## Utiliser un arbre :
On utilisera  un arbre ou un schéma à cases uniquement dans le cas où l’expérience aléatoire considérée consiste à choisir successivement (c’est-à-dire à la suite l’un de l’autre) plusieurs éléments dans un ensemble fini donné. C’est-à-dire que l’ordre intervient dans l’expérience.

>**Exemple** *Au restaurant, vous devez choisir parmi 3 entrées, 2 plats et 4 desserts possibles. Combien de menus différents pouvez-vous constituer  ?*  
Si l’on note $E_1$, $E_2$ et $E_3$ les 3 entrées possibles, $P_1$ et $P_2$ les 2 plats et $D_1$, $D_2$, $D_3$ et $D_4$ les 4 desserts, l’arbre des possibilités et le suivant :
<br/>
<div class="sodad-image" style="margin: auto"><img src="http://www.plx.ovh/chamilo/images/exoproba-img1.png" width=600></img></div>
<br/>
>Cet arbre a 24 branches correspondant à 3×2×4=24 menus possibles  
Avec un schéma à case on obtient :  
<br/>
<div style="margin:auto; max-width: 500px" >
    <table style="margin:auto">
        <tr>
            <td style="border:solid; width: 3cm; height: 1cm"> </td>
            <td style="border:solid; width: 3cm"> </td>
            <td style="border:solid; width: 3cm"> </td>
        </tr>
        <tr>
            <td style="text-align: center">Entrée</td>
            <td style="text-align: center">Plat</td>
            <td style="text-align: center">Dessert</td>
        </tr>
    </table>
</div>
<br/>
>Il y a 3 choix pour la première case (car 3 entrées) ; ce choix étant fait, il y a deux choix pour la seconde case (et ceci pour chacun des choix de la première case) ; ces choix étant faits, il y a quatre choix pour la 3e case (car quatre desserts possibles). On a en tout : 3×2×4=24 menus possibles

## Utiliser un tableau :
On peut utiliser un tableau à double entrée pour dénombrer les résultats possibles d’une expérience donnée uniquement lorsque cette expérience est décomposable en deux actions simples où l’ordre intervient : lancers successifs de deux dés ou de deux pièces de monnaies, tirages successifs de deux jetons numérotés etc. Il n’est bien sûr pas utilisable si plus de deux actions entrent en jeux (lancers de dés)

>**Exemple** On lance deux dés équilibrés Quels est le nombre de couples obtenus contenant au moins une face numérotée 6 ?

|Dé 1\\2|1| 2   | 3 | 4 | 5 | 6 |  
|:------- |:---:|:---:|:---:|:---:|:---:|:---:|  
|1|1-1 |1-2 |1-3 |1-4 |1-5 |<span class="cehjred">1-6</span> |
|2|2-1 |2-2 |2-3 |2-4 |2-5 |<span class="cehjred">2-6</span> |
|3|3-1 |3-2 |3-3 |3-4 |3-5 |<span class="cehjred">3-6</span> |
|4|4-1 |4-2 |4-3 |4-4 |4-5 |<span class="cehjred">4-6</span> |
|5|5-1 |5-2 |5-3 |5-4 |5-5 |<span class="cehjred">5-6</span> |
|6|<span class="cehjred">6-1</span> |<span class="cehjred">6-2</span> |<span class="cehjred">6-3</span> |<span class="cehjred">6-4</span> |<span class="cehjred">6-5</span> |<span class="cehjred">6-6</span> |

>Il y a donc 36 résultats possibles. 
