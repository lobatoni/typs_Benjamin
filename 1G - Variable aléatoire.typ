#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Variable aléatoire]

#historique[En 1654, Blaise Pascal (1623-1662) entretient avec Pierre de Fermat (1601-1665) des correspondances sur le thème des jeux de hasard et d'espérance de gain qui les mènent à exposer une théorie nouvelle : les calculs de probabilités.\
Ils s'intéressent à la résolution de problèmes de dénombrement comme par exemple celui du Chevalier de Méré : « Comment distribuer équitablement la mise à un jeu de hasard interrompu avant la fin ? »\
Ces travaux fondateurs établirent les bases de la théorie moderne des probabilités, ouvrant la voie aux développements ultérieurs de Jacob Bernoulli (1654-1705) sur la loi des grands nombres et d'Abraham de Moivre (1667-1754) sur la théorie des variables aléatoires. Ces concepts révolutionnèrent l'approche mathématique de l'incertitude et du hasard.]

= Variable aléatoire

#definition[
Soit $Omega$ l'ensemble (fini) des issues d'une expérience aléatoire.

Une *_variable aléatoire_* $X$ définie sur $Omega$ est une fonction qui, à chaque issue de $Omega$, associe un nombre réel.
]

#exemple[
Soit l'expérience aléatoire : « On lance un dé à six faces et on regarde le résultat. »

- Si le résultat est pair, on gagne 2€.
- Si le résultat est 1, on gagne 3€.
- Si le résultat est 3 ou 5, on perd 4€.

On définit ainsi une variable aléatoire $X$ sur l'univers $Omega = {1 ; 2 ; 3 ; 4 ; 5 ; 6}$ qui peut prendre les valeurs $2$, $3$, ou $-4$.
]

#notations[
- Une variable aléatoire est souvent notée en majuscule : $X$, $Y$, $Z$, $G$, ...
- L'ensemble des valeurs prises par $X$ se note $X(Omega)$.
- Si $X(Omega) = {x_1 ; x_2 ; ... ; x_n}$, l'événement « $X$ prend la valeur $x_i$ » se notera ${X = x_i}$.
- La probabilité de l'événement ${X = x_i}$ se note $P({X = x_i})$ ou, plus simplement, $P(X = x_i)$.
]

#exemple[
Pour l'exemple précédent, préciser à quoi correspondent $X(Omega)$ et l'événement « Gagner deux euros ».

#if prof [
  $X(Omega) = {-4 ; 2 ; 3}$.
  
  L'événement « Gagner deux euros » se note ${X = 2}$. Il est composé des issues « obtenir un deux », « obtenir un quatre », et « obtenir un six ». Sa probabilité est $P(X = 2)$, qui vaut $0,5$.
] else [
  #acompleter()
]
]

= Loi de probabilité d'une variable aléatoire

#definition[
Soit une variable aléatoire $X$ définie sur un univers fini $Omega$, et prenant les valeurs $x_1, x_2, ..., x_n$.

La *_loi de probabilité_* de $X$ associe à toute valeur $x_i$ la probabilité $P(X = x_i)$.
]

#remarque[
$P(X = x_i)$ peut se noter $p_i$.
]

On peut présenter la loi de $X$ sous la forme d'un tableau :

#align(center)[
  #table(
    columns: (auto, auto, auto, auto),
    inset: 0.7em,
    table.header($x_i$, $x_1$, $...$, $x_n$),
    $P(X = x_i)$, $p_1$, $...$, $p_n$
  )
]

#exemple[
Soit l'expérience aléatoire : « On tire une carte dans un jeu de 32 cartes. »

On considère le jeu suivant :

- Si on tire un cœur, on gagne 2€.
- Si on tire un roi, on gagne 5€.
- Si on tire une autre carte, on perd 1€.

On appelle $X$ la variable aléatoire qui à une carte tirée associe un gain ou une perte. Déterminer la loi de probabilité de $X$.

#if prof [
  On remarque que la variable aléatoire $X$ peut prendre les valeurs $2$, $5$, $-1$, mais aussi $7$.
  
  En effet, si on tire le roi de cœur, on gagne 7€.
  
  - Si la carte tirée est un cœur, mais pas le roi, $X = 2$.
    $P(X = 2) = 7/32$
  
  - Si la carte tirée est un roi, mais pas celui de cœur, $X = 5$.
    $P(X = 5) = 3/32$
  
  - Si la carte tirée est le roi de cœur, $X = 7$.
    $P(X = 7) = 1/32$
  
  - Si la carte tirée n'est ni un roi, ni un cœur, $X = -1$.
    $P(X = -1) = 21/32$
  
  La loi de probabilité de $X$ est :
  
  #align(center)[
    #table(
      columns: (auto, auto, auto, auto, auto),
      inset: 0.7em,
      table.header($x_i$, $-1$, $2$, $5$, $7$),
      $P(X = x_i)$, $21/32$, $7/32$, $3/32$, $1/32$
    )
  ]
] else [
  #acompleter()
]
]

#remarques[
On a en particulier :

- $0 <= p_i <= 1$
- $p_1 + p_2 + ... + p_n = 1$
]

= Espérance, variance, écart-type

#definitions[
Soit une variable aléatoire $X$ définie sur un univers $Omega$ et prenant les valeurs $x_1, x_2, ..., x_n$.

Soit la loi de probabilité de $X$ qui associe à toute valeur $x_i$ la probabilité $p_i = P(X = x_i)$.

- L'*_espérance mathématique_* de la loi de probabilité de $X$ est :
  $ E(X) = p_1 x_1 + p_2 x_2 + ... + p_n x_n $

- La *_variance_* de la loi de probabilité $X$ est :
  $ V(X) = p_1 (x_1 - E(X))^2 + p_2 (x_2 - E(X))^2 + ... + p_n (x_n - E(X))^2 $

- L'*_écart-type_* de la loi de probabilité de $X$ est :
  $ sigma(X) = sqrt(V(X)) $
]

#remarques[

- L'espérance est la moyenne de la série des $x_i$, pondérée par les probabilités $p_i$.
- La variance est la moyenne des carrés des écarts par rapport à cette espérance. L'écart-type représente donc de combien on s'écarte de l'espérance, en moyenne.
]

#exemple[
Considérant le jeu de l'exemple précédent, calculer l'espérance, la variance et l'écart-type de la loi de probabilité de $X$ et interpréter les résultats pour l'espérance et l'écart-type.

#if prof [
  $E(X) = 21/32 times (-1) + 7/32 times 2 + 3/32 times 5 + 1/32 times 7 = 15/32$
  
  $V(X) = 21/32 times (-1 - 15/32)^2 + 7/32 times (2 - 15/32)^2 + 3/32 times (5 - 15/32)^2 + 1/32 times (7 - 15/32)^2 approx 5,1865$
  
  $sigma(X) approx sqrt(5","1865) approx 2,28$
  
  L'espérance égale à $15/32 approx 0,5$ signifie qu'en jouant un grand nombre de fois, on peut espérer gagner en moyenne $0,50$ € par partie.
  
  L'écart-type égal à environ $2,28$ signifie qu'avec une espérance proche de $0,50$ €, le risque de perdre de l'argent est important.
] else [
  #acompleter()
]
]
