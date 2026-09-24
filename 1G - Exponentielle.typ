#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Fonction exponentielle]

#historique[
  La fonction exponentielle trouve ses origines dans les travaux de John Napier (1550-1617) sur les logarithmes, publiés en 1614. Cependant, c'est Leonhard Euler (1707-1783) qui développa systématiquement la théorie des fonctions exponentielles et introduisit la notation moderne.

  Euler fut le premier à définir rigoureusement la fonction exponentielle comme l'unique fonction vérifiant $f'(x) = f(x)$ avec $f(0) = 1$. Il établit également les propriétés fondamentales de cette fonction et découvrit les liens profonds entre les fonctions exponentielles et trigonométriques par sa célèbre formule $e^(i theta) = cos theta + i sin theta$.
]

= Définition de la fonction exponentielle

#theoreme(titre:"(admis) Théorème d'existence et d'unicité")[
  Il existe une unique fonction $f$, définie et dérivable sur $RR$, telle que $f'=f$ et $f(0)=1$.
]

#definition[
  La fonction du théorème précédent s'appelle *_fonction exponentielle_* et se note $exp$.
]

#align(center)[
  #image("images/exponentielle_1.png", width: 30%)
]

= Propriétés de la fonction exponentielle

== Relation fonctionnelle

#propriete(titre:"relation fonctionnelle")[
  Pour tous réels $x$ et $y$, $ exp(x+y) = exp(x) exp(y) $
]

#remarque[
  Cette formule permet de transformer une somme en produit et réciproquement.
]

#demonstration[
  #if prof [
    Prouvons d'abord que la fonction $exp$ ne s'annule jamais. Pour tout réel $x$,
    $(exp(x) exp(-x))' = (exp(x))' exp(-x) - exp(x)(exp(-x))' = exp(x) exp(-x) - exp(x) exp(-x) = 0$.

    Donc $exp(x) exp(-x)$ est constant car sa dérivée est nulle.

    En prenant $x = 0$, on trouve que $exp(x) exp(-x) = 1$. Ainsi, $exp(x)$ n'est jamais nul.

    Soit $y$ un réel fixé.
    
    Pour tout réel $x$, $exp(x) != 0$ donc on peut considérer la fonction $f_y$ définie sur $RR$ par $f_y (x) = (exp(x+y))/(exp(x))$.

    $f_y$ est dérivable sur $RR$ et pour tout réel $x$, on a :
    $f'_y (x) = (exp'(x+y) exp(x) - exp(x+y) exp'(x))/(exp(x))^2 = (exp(x+y) exp(x) - exp(x+y) exp(x))/(exp(x))^2 = 0$

    $f_y$ est donc une fonction constante sur $RR$, égale à $f_y (0) = (exp(0+y))/(exp(0)) = exp(y)$.

    D'où, pour tout réel $y$, pour tout réel $x$, $(exp(x+y))/(exp(x)) = exp(y) <==> exp(x+y) = exp(x) exp(y)$
  ] else [
    #acompleter()
  ]
]

#proprietes[
  Pour tous réels $x$ et $y$, pour tout $n in NN$ :

  - $exp(-x) = 1/(exp(x))"    ou encore   "exp(x) exp(-x) = 1$
  - $exp(x-y) = (exp(x))/(exp(y))$
  - $exp(n x) = (exp(x))^n$
]

#demonstrations[
  #if prof [
    - $exp(x) exp(-x) = exp(x-x) = exp(0) = 1$
    - $exp(x-y) = exp(x+(-y)) = exp(x) exp(-y) = exp(x) 1/(exp y) = (exp(x))/(exp(y))$
    - $exp(n x) = exp(underbrace(x+x+dots.c+x, n "fois")) = underbrace(exp(x) times exp(x) times dots.c times exp(x), n "fois") = (exp(x))^n$
  ] else [
    #acompleter()
  ]
]

== Stricte positivité de la fonction exponentielle

#propriete[
  Pour tout réel $x$, $ exp(x) > 0 $
]

#demonstration[
  #if prof [
    Pour tout réel $x$, $exp(x) = exp(x/2 times 2) = (exp(x/2))^2$.

    Or un carré est toujours positif.

    De plus, pour tout réel $x$, $exp(x) exp(-x) = exp(x-x) = exp(0) = 1$.

    Donc la fonction exponentielle n'est jamais nulle.

    On en déduit que la fonction exponentielle est strictement positive sur tout $RR$.
  ] else [
    #acompleter()
  ]
]

== Le nombre *$e$*

#definition[
  L'image de $1$ par la fonction exponentielle est le nombre réel noté $e$.

  On a $exp(1) = e approx 2,7182818$.
]

#historique[
  Comme $pi$, le nombre $e$ est un nombre irrationnel, c'est à dire qu'il s'écrit avec un nombre infini de décimales sans suite logique.

  Le premier à s'intéresser de façon sérieuse au nombre $e$ est le mathématicien suisse Leonhard Euler (1707 ; 1783). C'est à lui que nous devons le nom de ce nombre. Non pas qu'il s'agisse de l'initiale de son nom mais peut être car $e$ est la première lettre du mot exponentielle.

  En 1748, Euler avait calculé 18 décimales de $e$ ; on en connaît aujourd'hui quelques 8000 milliards de décimales.
]

#notation[
  Pour tout entier naturel $n$, $exp(n) = exp(n times 1) = (exp(1))^n = e^n$.

  On admettra que cette égalité est valable pour tout réel $x$, et on notera désormais :
  
  #align(center)[
    $exp(x) = e^x$
  ]
]


#if not prof [#pagebreak()]

Avec cette nouvelle notation, on peut résumer l'ensemble des propriétés de la fonction exponentielle :

#proprietes[
  Pour tous réels $x$ et $y$, pour tout $n in NN$,
  - $e^0 = 1$ et $e^1 = e$
  - $e^x > 0$ et $(e^x)' = e^x$
  - $e^(x+y) = e^x e^y",      "e^(x-y) = (e^x)/(e^y)",      "e^(-x) = 1/(e^x)",      "(e^x)^n = e^(n x)$
]

#exemples[
  Simplifier les écritures des nombres suivants

  1. $(e^7 times e^(-4))/(e^(-5))$
  2. $(e^5)^(-6) times e^(-3)$
  3. $1/((e^(-3))^2) + ((e^4)^(-1))/(e^2 times e^(-6))$
  4. $((e^(2x))^3)/(e^(3x+1) times e^(-x-1))$

  #if prof [
    1. $(e^7 times e^(-4))/(e^(-5)) = (e^3)/(e^(-5)) = e^8$
    
    2. $(e^5)^(-6) times e^(-3) = e^(-30) times e^(-3) = e^(-33)$

    3. $1/((e^(-3))^2) + ((e^4)^(-1))/(e^2 times e^(-6)) = 1/(e^(-6)) + (e^(-4))/(e^(-4)) = e^6 + e^0 = e^6 + 1$

    4. $((e^(2x))^3)/(e^(3x+1) times e^(-x-1)) = (e^(6x))/(e^(2x)) = e^(4x)$
  ] else [
    #acompleter()
  ]
]

== Lien avec les suites géométriques

#rappel[
  La suite géométrique $(u_n)_(n in NN)$ de raison $q$ et de premier terme $u_0$ a pour terme général :\
  $u_n = u_0 times q^n$
]

#propriete[
  Pour tout $n in NN$ et pour tout $x in RR$, la suite $u$ définie par $u_n = e^(n x)$ est une suite géométrique de raison $e^x$.
]

#demonstration[
  Conséquence de l'égalité $e^(n x) = (e^x)^n$.
]

#exemples[
  Dans chaque cas, déterminer la raison et le premier terme de la suite géométrique dont le terme général est :

  1. $u_n = e^(4n)$
  2. $v_n = 2 e^(-3n)$
  3. $w_n = -e^(n/3)$
  4. $z_n = e^(2n-1)$

  #if prof [
    1. $u_n = e^(4n) = 1 times (e^4)^n$
    $(u_n)$ est une suite géométrique de raison $e^4$ et de premier terme $1$.
    
    2. $v_n = 2 e^(-3n) = 2 times (e^(-3))^n$
    $(v_n)$ est une suite géométrique de raison $e^(-3)$ et de premier terme $2$.
    
    3. $w_n = -e^(n/3) = -1 times (e^(1/3))^n$
    $(w_n)$ est une suite géométrique de raison $e^(1/3)$ et de premier terme $-1$.
    
    4. $z_n = e^(2n-1) = e^(2n) e^(-1) = e^(-1) (e^2)^n = 1/e (e^2)^n$
    $(z_n)$ est une suite géométrique de raison $e^2$ et de premier terme $1/e$.
  ] else [
    #acompleter()
  ]
]

= Étude de la fonction exponentielle

== Dérivabilité

#propriete[
  Par définition, la fonction exponentielle est dérivable sur $RR$ et $(e^x)' = e^x$.
]

== Variation

#propriete[
  La fonction exponentielle est strictement croissante sur $RR$
]

#demonstration[
  #if prof [
    Pour tout $x in RR$, $(e^x)' > 0$ car $(e^x)' = e^x > 0$.
    
    La fonction exponentielle est donc strictement croissante, puisque sa dérivée est toujours strictement positive.
  ] else [
    #acompleter()
  ]
]

*Tableau de variation :*

#align(center)[
  #tabvar(
    variable: $x$,
    label: (([Signe de $(e^x)'$], "Sign"), ([Variation de $exp$], "Variation")),
    domain: ($-oo$, $0$, $+oo$),
    contents: (
      (
        ($+$),(),
      ),
      (
        (bottom, $0$),
        (center, $1$),
        (top, $+oo$)
      ),
    )
  )
]

#proprietes[
  Pour tous réels $a$ et $b$,

  - $e^a = e^b <==> a = b$
  - $e^a < e^b <==> a < b$
]

#demonstration[
  Conséquences de la stricte croissance.
]

#exemples[

  1. Résoudre dans $RR$ l'équation $e^(x^2-3) - e^(-2x) = 0$
  2. Résoudre dans $RR$ l'inéquation $e^(4x-1) >= 1$

  #if prof [
    1. $e^(x^2-3) - e^(-2x) = 0$
      $<==> e^(x^2-3) = e^(-2x)$
      $<==> x^2 - 3 = -2x$
      $<==> x^2 + 2x - 3 = 0$
    
      $Delta = 2^2 - 4 times 1 times (-3) = 16$
    
      Donc $x = (-2 - sqrt(16))/(2 times 1)$ ou $x = (-2 + sqrt(16))/(2 times 1)$
    
      Les solutions sont $-3$ et $1$.

    2. $e^(4x-1) >= 1$
      $<==> e^(4x-1) >= e^0$
      $<==> 4x - 1 >= 0$
      $<==> x >= 1/4$
      
      L'ensemble des solutions est l'intervalle $lr(bracket.l 1/4";"+oo bracket.l)$
  ] else [
    #acompleter()
  ]
]

= Fonctions exponentielles

#definition[
  Plus généralement, on appelle *_fonctions exponentielles_* toute fonction définie sur $RR$ de la forme $x arrow.bar e^(k x)$ où $k$ est un réel non nul.
]

#propriete[
  Soit $k$ un réel non nul.

  - Si $k > 0$, la fonction $x arrow.bar e^(k x)$ est strictement croissante sur $RR$.
  - Si $k < 0$, la fonction $x arrow.bar e^(k x)$ est strictement décroissante sur $RR$.
]

*Illustrations :*

#grid(
  columns: (1fr, 1fr),
  align: horizon,
  [
    #align(center)[#image("images/Fonctions_exponentielles_k_positif.png", width: 90%)]
  ],
  [
    #align(center)[#image("images/Fonctions_exponentielles_k_negatif.png", width: 90%)]
  ]
)

#demonstration[
  #if prof [
    Pour tout réel $x$, $k x$ appartient à $RR$ et comme la fonction exponentielle est définie et dérivable sur $RR$, alors, par composition, la fonction $f : x arrow.bar e^(k x)$ l'est également.

    Pour tout réel $x$, $f'(x) = k times exp'(k x) = k times e^(k x)$.

    Comme l'exponentielle est une fonction strictement positive, alors pour tout réel $x$, le signe de la dérivée est le même que celui de $k$.
  ] else [
    #acompleter()
  ]
]
