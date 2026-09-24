#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Suites numériques - 2/2]

#historique[
  Une anecdote relate comment le mathématicien allemand Carl Friedrich Gauss (1777 - 1855), alors âgé de 10 ans a fait preuve d'un talent remarquable pour le calcul mental. Voulant occuper ses élèves, le professeur demande d'effectuer des additions, plus exactement d'effectuer la somme des nombres de 1 à 100. Après très peu de temps, le jeune Gauss impressionne son professeur en donnant la réponse correcte.

  Sa technique consiste à regrouper astucieusement les termes extrêmes deux par deux. Sans le savoir encore, Gauss a découvert la formule permettant de calculer la somme des termes d'une suite arithmétique.

  Cette méthode de regroupement intelligent deviendra plus tard un pilier fondamental de l'analyse combinatoire et du calcul algébrique, démontrant la puissance de l'intuition mathématique précoce face aux problèmes complexes.
]

= Suites arithmétiques

== Définition

#definition[
  Une suite est dite *_arithmétique_* lorsqu'on passe d'un terme au suivant en ajoutant un même nombre.

  Autrement dit, une suite $(u_n)$ est dite arithmétique s'il existe un nombre réel $r$ tel que pour tout entier naturel $n$, on ait $u_(n+1) = u_n + r$.

  Ce nombre $r$ est appelé *_raison_* de la suite.
]

#remarque[
  Pour tout $n$ de $NN$, $u_(n+1) - u_n = r$.

  Les suites arithmétiques modélisent donc des phénomènes à *_variations constantes_*.
]

#exemples[
  #if prof [
    - Soit la suite $u$ définie par $u_n = 2n + 3$.
      $u_0 = 3$, $u_1 = 5$, $u_2 = 7$, $u_3 = 9$.
      De manière générale, on passe de $u_n$ à $u_(n+1)$ en ajoutant $u_(n+1) - u_n = 2(n+1) + 3 - (2n + 3) = 2$.
      $u$ est donc une suite arithmétique de raison $2$.

    - Soit la suite $v$ définie par $v_n = n^2 + 1$.
      $v_0 = 1$, $v_1 = 2$, $v_2 = 5$.
      $v_1 - v_0 = 1$ et $v_2 - v_1 = 3$.
      $v$ n'est donc pas une suite arithmétique.
  ] else [
    #acompleter()
  ]
]

== Forme explicite du terme général d'une suite arithmétique

#proprietes[
  Si $(u_n)$ est une suite arithmétique de raison $r$, alors pour tout entier naturel $n$, $u_n = u_0 + n r$.
]

#demonstration[
  #if prof [
    La suite arithmétique $(u_n)$ de raison $r$ et de premier terme $u_0$ vérifie la relation $u_(n+1) = u_n + r$.

    En calculant les premiers termes :
    $u_1 = u_0 + r$
    $u_2 = u_1 + r$
    $u_3 = u_2 + r$
    $dots.v$
    $u_n = u_(n-1) + r$

    En additionnant membre à membre ces $n$ égalités, on obtient :
    $u_1 + u_2 + u_3 + dots.c + u_n = u_0 + u_1 + u_2 + dots.c + u_(n-1) + n times r$

    C'est-à-dire, en retranchant aux deux membres les termes identiques :
    $u_n = u_0 + n r$.
  ] else [
    #acompleter()
  ]
]

#exemples[
  Pour chaque suite, calculer le terme de rang 20.

  1. Soit $(u_n)$ la suite arithmétique de raison $3$ et de premier terme $u_0 = 6$.

  2. Soit $(v_n)$ la suite arithmétique de raison $4$ telle que $v_12 = 60$.

  3. Soit $(w_n)$ la suite arithmétique telle que $w_3 = 18$ et $w_17 = -10$.

  #if prof [
    1. $u_20 = u_0 + 20 times 3 = 66$.
    2. $v_20 = v_12 + 8 times 4 = 92$.
    3. $w_20 = w_17 + 3 times r$ avec $r = (w_17 - w_3)/(17 - 3) = -2$, d'où $w_20 = -16$.
  ] else [
    #acompleter()
  ]
]

== Sens de variation d'une suite arithmétique

#propriete[
  La représentation graphique d'une suite arithmétique est un ensemble de points alignés.

  La raison de la suite arithmétique correspond au coefficient directeur de la droite passant par l'ensemble des points représentant la suite, et l'ordonnée à l'origine au terme de rang $0$ de la suite.
]

#exemple[
  On a représenté ci-dessous la suite arithmétique de raison $-0,5$ et de premier terme $4$ :

  #align(center)[
    #image("images/suites_2.png", width: 40%)
  ]
]

#proprietes[
  Soit $u$ une suite arithmétique de raison $r$.

  - Si $r < 0$, la suite arithmétique est strictement décroissante.
  - Si $r = 0$, la suite arithmétique est constante.
  - Si $r > 0$, la suite arithmétique est strictement croissante.
]

#demonstration[
  #if prof [
    Pour tout entier naturel $n$, $u_(n+1) = u_n + r$ donc :
    - si $r < 0$, alors $u_n + r < u_n$, soit $u_(n+1) < u_n$ d'où $(u_n)$ est strictement décroissante.
    - si $r > 0$, alors $u_n + r > u_n$, soit $u_(n+1) > u_n$ d'où $(u_n)$ est strictement croissante.
  ] else [
    #acompleter()
  ]
]

#exemples[
  Avec les notations des exemples précédents, les suites $(u_n)$ de raison $3$ et $(v_n)$ de raison $4$ sont strictement croissantes et la suite $(w_n)$ de raison $-2$ est strictement décroissante.
]

== Somme des _n_ premiers termes d'une suite arithmétique

#propriete[
  Pour tout entier naturel $n >= 1$, la somme des $n$ premiers entiers est

  $ S = 1 + 2 + 3 + dots.c + n = (n(n+1))/2 $
]

#demonstration[
  #if prof [
    Notons $S = 1 + 2 + 3 + dots.c + n$.
    On effectue cette somme dans les deux sens :

    $S = 1 + 2 + 3 + dots.c + n$
    $S = n + (n-1) + (n-2) + dots.c + 1$
    $2S = (n+1) + (n+1) + (n+1) + dots.c + (n+1)$

    On en déduit que $2S = n times (n+1)$ d'où $S = (n(n+1))/2$.
  ] else [
    #acompleter()
  ]
]

#propriete[
  Soit $u$ une suite arithmétique de raison $r$ et de premier terme $u_0$.

  Pour tout entier naturel $n >= 1$, la somme des $n$ premiers termes de la suite est

  $ S = u_0 + u_1 + u_2 + dots.c + u_(n-1) = n (u_0 + u_(n-1))/2 $
]

#demonstration[
  #if prof [
    Pour tout entier $n >= 1$, $u_n = u_0 + n r$ donc
    $
    S = u_0 + u_1 + u_2 + dots.c + u_n &= u_0 + u_0 + r + u_0 + 2r + dots.c + u_0 + n r \
    &= n times u_0 + r times (1 + 2 + 3 + dots.c + n) \
    &= n times u_0 + r times (n(n-1))/2 \
    &= n(u_0 + r (n-1)/2) \
    &= n (u_0 + u_0 + r(n-1))/2 \
    &= n (u_0 + u_(n-1))/2
    $
  ] else [
    #acompleter()
  ]
]

#theoreme[
  La somme des termes consécutifs d'une suite arithmétique est la moyenne arithmétique des termes extrêmes multipliée par le nombre de termes sommés :

  $ S = "nombre de termes sommés" times ("premier terme sommé" + "dernier terme sommé")/2 $
]

#exemples[
  1. Somme des multiples de 3 entre 12 et 27.
  2. Somme des $n$ premiers entiers impairs.

  #if prof [
    1. La suite des multiples positifs de 3 est arithmétique de raison 3 et de premier terme 3 (3 ; 6 ; 9 ; $dots.h$).
       Il y a 6 multiples de 3 entre 12 et 27, donc leur somme vaut :
       $6 times (12 + 27)/2 = 117$.

    2. La suite des entiers impairs est la suite $u$ de terme général $u_n = 2n + 1$.
       Elle est arithmétique de raison $2$ et de premier terme $u_0 = 1$.
       On a donc : $1 + 3 + 5 + dots.c + 2(n-1) + 1 = u_0 + u_1 + u_2 + dots.c + u_(n-1) = n (u_0 + u_(n-1))/2 = n (1 + 2(n-1) + 1)/2 = n^2$
  ] else [
    #acompleter()
  ]
]

= Suites géométriques

== Définition

#definition[
  Une suite est dite *_géométrique_* lorsqu'on passe d'un terme au suivant en multipliant par un nombre constant.

  Autrement dit, une suite $(u_n)$ est dite géométrique s'il existe un nombre réel $q$ non nul tel que pour tout entier naturel $n$, on ait $u_(n+1) = q times u_n$.

  Ce nombre $q$ est encore appelé *_raison_* de la suite.
]

#remarque[
  Pour tout $n$ de $NN$, si $u_n eq.not 0$, on a $u_(n+1)/u_n = q$.

  Les suites géométriques modélisent donc des phénomènes à *_variations relatives constantes_*.
]

#exemples[

  #if prof [
    - Soit la suite $u$ définie par $u_n = 2^n$. $u_0 = 1$, $u_1 = 2$, $u_2 = 4$, $u_3 = 8$.

      De manière générale, on passe de $u_n$ à $u_(n+1)$ en multipliant par : $u_(n+1)/u_n = 2^(n+1)/2^n = 2$.

      $u$ est donc une suite géométrique de raison $2$.

    - Soit la suite $v$ définie par $v_n = n^2 + 1$. $v_0 = 1$, $v_1 = 2$, $v_2 = 5$. $v_1/v_0 = 2/1 = 2$ et $v_2/v_1 = 5/2$.

      $v$ n'est donc pas une suite géométrique.
  ] else [
    #acompleter()
  ]
]

== Forme explicite du terme général d'une suite géométrique

#propriete[
  Si $(u_n)$ est une suite géométrique de raison $q$, alors pour tout entier naturel $n$, $u_n = u_0 times q^n$.
]

#demonstration[
  #if prof [
    La suite géométrique $(u_n)$ de raison $q$ et de premier terme $u_0$ vérifie la relation $u_(n+1) = q times u_n$.

    - Si $q$ ou $u_0$ est nul, alors tous les termes de la suite sont nuls. La démonstration est évidente dans ce cas.
    - Sinon, tous les termes de la suite sont non nuls, et on calcule les premiers termes :
      $u_1 = q times u_0$
      $u_2 = q times u_1$
      $u_3 = q times u_2$
      $dots.v$
      $u_n = q times u_(n-1)$

      En multipliant membre à membre ces $n$ égalités, on obtient :
      $u_1 times u_2 times u_3 times dots.c times u_n = u_0 times u_1 times u_2 times dots.c times u_(n-1) times q^n$

      Comme les termes de la suite sont non nuls, on peut diviser aux deux membres les facteurs identiques : $u_n = u_0 times q^n$.
  ] else [
    #acompleter()
  ]
]

#exemples[
  Pour chaque suite, calculer le terme de rang 5 :

  1. Soit $(u_n)$ la suite géométrique de raison $3$ et de premier terme $u_0 = 2$.
  2. Soit $(v_n)$ la suite géométrique de raison $5$ telle que $v_2 = 2$.
  3. Soit $(w_n)$ la suite géométrique à termes positifs telle que $w_2 = 1/2$ et $w_4 = 1/8$.

  #if prof [
    1. $u_5 = u_0 times 3^5 = 486$.
    2. $v_5 = v_2 times 5^3 = 250$.
    3. Pour passer de $w_2$ à $w_4$, on a multiplié $w_2$ par $q^2$, donc $q = sqrt(w_4/w_2) = 1/2$.
       D'où $w_5 = w_4 times 1/2 = 1/16$.
  ] else [
    #acompleter()
  ]
]

== Sens de variation d'une suite géométrique de terme initial positif

Les termes d'une suite géométrique sont obtenus en appliquant successivement un coefficient multiplicateur (la raison) constant. On parle alors d'*_évolution exponentielle_*.

#propriete[
  Soit $u$ une suite géométrique de terme initial $u_0$ non nul et de raison $q$.

  - Si $q = 1$, la suite est constante.
  - Si $q > 1$ :
    - si $u_0 > 0$, la suite est strictement croissante.
    - si $u_0 < 0$, la suite est strictement décroissante.
  - Si $0 < q < 1$ :
    - si $u_0 > 0$, la suite est strictement décroissante.
    - si $u_0 < 0$, la suite est strictement croissante.
]

#demonstration[
  (pour le cas $u_0 > 0$)

  #if prof [
    Pour tout entier naturel $n$, $u_(n+1) = u_n times q$ donc :
    - si $0 < q < 1$, alors $0 < u_n times q < u_n$, soit $u_(n+1) < u_n$ d'où $(u_n)$ est strictement décroissante.
    - si $q > 1$, alors $u_n times q > u_n$, soit $u_(n+1) > u_n$ d'où $(u_n)$ est strictement croissante.
  ] else [
    #acompleter()
  ]
]

#exemples[
  Avec les notations des exemples précédents, les suites géométriques $(u_n)$ de raison $3$ et $(v_n)$ de raison $5$ sont strictement croissantes et la suite géométrique $(w_n)$ de raison $1/2$ est strictement décroissante.

  On a représenté ci-dessous la suite géométrique de raison 2 et de premier terme $-4$ :

  #align(center)[
    #image("images/suites_3.png", width: 30%)
  ]
]

== Somme des _n_ premiers termes d'une suite géométrique

#propriete[
  Pour tout nombre réel $q$ différent de $1$, la somme des $n$ premières puissances de $q$ est :

  $ S = q^0 + q^1 + q^2 + dots.c + q^(n-1) = (1 - q^n)/(1 - q) $
]

#demonstration[
  #if prof [
    Posons $S = 1 + q + q^2 + dots.c + q^(n-1)$.\
    Alors $q S = q + q^2 + q^3 + dots.c + q^n$.\
    Donc : $S - q S = 1 + q + q^2 + dots.c + q^(n-1) - (q + q^2 + q^3 + dots.c + q^n) = 1 - q^n$

    Comme $S - q S = (1 - q)S$ et $q eq.not 1$, il vient : $S = (1 - q^n)/(1 - q)$
  ] else [
    #acompleter()
  ]
]

#propriete[
  Soit $u$ une suite géométrique de raison $q eq.not 1$ et de premier terme $u_0$.

  Pour tout entier naturel $n >= 1$, la somme des $n$ premiers termes de la suite est

  $ S = u_0 + u_1 + u_2 + dots.c + u_(n-1) = u_0 (1 - q^n)/(1 - q) $
]

#demonstration[
  #if prof [
    Pour tout entier $n >= 1$, $u_n = u_0 times q^n$ donc\

    $u_0 + u_1 + u_2 + dots.c + u_(n-1) &= u_0 times q^0 + u_0 times q^1 + u_0 times q^2 + dots.c + u_0 times q^(n-1)\
    &= u_0(q^0 + q^1 + q^2 + dots.c + q^(n-1))\
    &= u_0 (1 - q^n)/(1 - q)$
  ] else [
    #acompleter()
  ]
]

#theoreme[
  La somme des termes consécutifs d'une suite géométrique est

  $ S = "premier terme sommé" times (1 - "raison"^("nombre de termes"))/(1 - "raison") $
]

#exemple[
  Calculer la somme des 14 premiers termes de la suite géométrique $u$ de raison 3 et de premier terme $u_0 = 2$.

  #if prof [
    $S = 2 + 2 times 3 + 2 times 3^2 + dots.c + 2 times 3^13 = 2 times (1 - 3^14)/(1 - 3) = 4 space 782 space 968$
  ] else [
    #acompleter()
  ]
]
