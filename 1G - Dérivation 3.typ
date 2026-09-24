#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Dérivation - 3/3]

#historique[Le lien entre dérivée et variations fut établi rigoureusement par les mathématiciens du XIXe siècle.\
Joseph-Louis Lagrange (1736-1813) fut le premier à formaliser le théorème des accroissements finis et à établir le lien fondamental entre le signe de la dérivée et la monotonie des fonctions. Ses travaux sur les fonctions analytiques révolutionnèrent l'analyse mathématique.\
Augustin-Louis Cauchy (1789-1857) compléta ces résultats en développant une théorie rigoureuse des limites et de la continuité. Il démontra que si une fonction dérivable possède une dérivée positive sur un intervalle, alors cette fonction est strictement croissante.\
Karl Weierstrass (1815-1897) apporta la rigueur finale à ces concepts en définissant précisément les notions d'extrema locaux et en établissant les conditions nécessaires pour qu'une fonction admette un maximum ou un minimum local. Ces résultats établirent définitivement le calcul différentiel comme fondement de l'analyse moderne et ouvrirent la voie aux applications en physique et en ingénierie.]

= Étude des variations d'une fonction

== Lien entre sens de variation d'une fonction et signe de la dérivée

#propriete(titre:"(admise)")[
Soit une fonction $f$ définie et dérivable sur un intervalle $I$.

- $f$ est *_décroissante_* sur $I$ si et seulement si $f'(x) <= 0$ pour tout $x in I$.
- $f$ est *_croissante_* sur $I$ si et seulement si $f'(x) >= 0$ pour tout $x in I$.
- $f$ est *_constante_* sur $I$ si et seulement si $f'(x) = 0$ pour tout $x in I$.
]

#exemples[
#grid(
  columns: (2fr, 1fr),
  align: horizon,
  [
    $cal(C)_f$ et $cal(C)_g$ représentent respectivement chacune une fonction $f$ et $g$, chacune définies et dérivables sur $[1;5]$.

    Toutes les tangentes à $cal(C)_f$ ont un coefficient directeur positif car $f$ est croissante : on en déduit que $f'$ est positif sur $[1;5]$.

    Toutes les tangentes à $cal(C)_g$ ont un coefficient directeur négatif car $g$ est décroissante : on en déduit que $g'$ est négatif sur $[1;5]$.
  ],
  [
    #align(center)[#image("images/Der3_1.png", width: 80%)]
  ]
)
]

== Exemple d'une fonction du second degré

Soit la fonction #align(center,[#fonction($f$,$RR$,$RR$,$x$,$2x^2-8x+1$)])

1. Calculer la fonction dérivée de $f$.
2. Déterminer le signe de $f'$ en fonction de $x$.
3. Dresser le tableau de variation de $f$.

#if prof [
  1. Pour tout réel $x$, on a $f'(x) = 2 times 2x - 8 = 4x - 8$.

  2. La fonction $f'$ est une fonction affine représentée par une droite dont le coefficient directeur 4 est positif. Elle est donc d'abord négative, puis positive.
  
    On commence par résoudre l'équation $f'(x) = 0$ :
  
    $4x - 8 = 0 <==> x = 2$.

    #align(center)[
      #tabvar(
        variable: $x$,
        label: (([Signe de $f'(x)$], "Sign"),),
        domain: ($-oo$, $2$, $+oo$),
        contents: (
          (
            ($-$),
            ("0",$+$),
          ),
        )
      )
    ]

  3. On sait que sur l'intervalle $]-oo;2]$, $f'(x)$ est négative, donc $f$ est décroissante.
  
    Sur l'intervalle $[2;+oo[$, $f$ est croissante.
  
    Pour $x = 2$, $f(x) = 2 times 2^2 - 8 times 2 + 1 = -7$.
  
    D'où le tableau de variation :

    #align(center)[
      #tabvar(
        variable: $x$,
        label: (([Signe de $f'(x)$], "Sign"), ([Variation de $f$], "Variation")),
        domain: ($-oo$, $2$, $+oo$),
        contents: (
          (
            ($-$),
            ("0",$+$),
          ),
          (
            (top, $+oo$),
            (bottom, $-7$),
            (top, $+oo$)
          ),
        )
      )
    ]
  ] else [
  #acompleter()
]

== Exemple d'une fonction du troisième degré

Soit la fonction #align(center,[#fonction($f$,$RR$,$RR$,$x$,$x^3 + 9/2 x^2 - 12x + 5$)])

1. Étudier les variations de $f$ et dresser le tableau de variation.
2. Dans un repère, représenter graphiquement la fonction $f$.

#if prof [
  1. Pour tout réel $x$, on a $f'(x) = 3x^2 + 9x - 12$
  
    Commençons par résoudre l'équation $f'(x) = 0$ :
  
    Le discriminant du trinôme $3x^2 + 9x - 12$ est égal à $Delta = 9^2 - 4 times 3 times (-12) = 225$.
  
    L'équation possède deux solutions : $x_1 = (-9 - sqrt(225))/(2 times 3) = -4$ et $x_2 = (-9 + sqrt(225))/(2 times 3) = 1$.
  
    On en déduit le tableau de variation de $f$ :

    #align(center)[
      #tabvar(
        variable: $x$,
        label: (([Signe de $f'(x)$], "Sign"), ([Variation de $f$], "Variation")),
        domain: ($-oo$, $-4$, $1$, $+oo$),
        contents: (
          (
            ($+$),
            ("0",$-$),
            ("0",$+$),
          ),
          (
            (bottom, $-oo$),
            (top, $61$),
            (bottom, $-3/2$),
            (top, $+oo$)
          ),
        )
      )
    ]

  2. Représentation avec une calculatrice graphique :
  
    #align(center)[#image("images/derivation_4.png", width: 50%)]
] else [
  #acompleter()
]

= Extremum local d'une fonction

#definition[
Soit $I$ un intervalle ouvert et $c$ un réel de $I$. On considère une fonction $f$ définie sur $I$.

- Dire que $f(c)$ est un *_maximum local_* (respectivement *_minimum local_*) de $f$ au voisinage de $c$ signifie qu'il existe deux réels $a$ et $b$ de $I$ tels que $c in ]a;b[$ et que pour tout réel $x in ]a;b[$ on a $f(x) <= f(c)$ (respectivement $f(x) >= f(c)$).

- Un *_extremum local_* est soit un maximum local, soit un minimum local.
]

#exemple[
#grid(
  columns: (2fr, 1fr),
  align: horizon,
  [
    On donne la courbe représentative d'une fonction $h$ ci-contre.

    Déterminer ses extremums locaux éventuels.
  ],
  [
    #align(center)[#image("images/der3_3.png", width: 70%)]
  ]
)

    #if prof [
      #acompleter()
    ] else [
      #acompleter()
    ]
]

#propriete[
Soit $f$ une fonction dérivable sur un intervalle $I$ *_ouvert_* et $a in I$.

Si $f(a)$ est un extremum local de $f$, alors $f'(a) = 0$.

#align(center)[
  Schémas illustratifs
  
  #image("images/der3_4.png", width: 50%)
]
]

#remarque[
La réciproque est fausse ! En effet la fonction $f$ définie sur $RR$ par $f(x) = x^3$ est un contre-exemple car $f'(0) = 0$ et 0 n'est pas un extremum local.
]

#propriete[
Soit $f$ une fonction dérivable sur un intervalle $I$ *_ouvert_* et $a in I$.

Si $f'$ s'annule en $a$, *_en changeant de signe_*, alors $f(a)$ est un extremum local de $f$.
]

#exemple[
La fonction $f$ définie sur $RR$ par $f(x) = 5x^2 - 3x + 4$ admet-elle un extremum sur $RR$ ?

#if prof [
  Pour tout réel $x$, on a $f'(x) = 10x - 3$
  
  $f'(x) = 0$ pour $x = 3/10$ et $f(3/10) = 71/20$
  
  On dresse alors le tableau de variation :

  #align(center)[
    #tabvar(
      variable: $x$,
      label: (([Signe de $f'(x)$], "Sign"), ([Variation de $f$], "Variation")),
      domain: ($-oo$, $3/10$, $+oo$),
      contents: (
        (
          ($-$),
          ("0",$+$),
        ),
        (
          (top, $+oo$),
          (bottom, $71/20$),
          (top, $+oo$)
        ),
      )
    )
  ]

  La fonction $f$ admet donc un minimum local de $71/20$ en $x = 3/10$.
] else [
  #acompleter()
]
]

= Position relative de deux courbes

Soit $f$ et $g$ deux fonctions définies sur $[2;+oo[$ par $f(x) = x^3$ et $g(x) = -5x + 18$.

Étudier la position relative des courbes représentatives $cal(C)_f$ et $cal(C)_g$.

#if prof [
  On étudie le signe de la différence $f(x) - g(x)$ :
  
  On pose $h(x) = f(x) - g(x) = x^3 + 5x - 18$
  
  Pour tout $x in [2;+oo[$, on a $h'(x) = 3x^2 + 5$
  
  Donc $h'(x) > 0$, et on en déduit que la fonction $h$ est strictement croissante sur $[2;+oo[$.
  
  Et $h(2) = 2^3 + 5 times 2 - 18 = 0$.
  
  D'où le tableau de variation de $h$ :

  #align(center)[
    #tabvar(
      variable: $x$,
      label: (([Signe de $h'(x)$], "Sign"), ([Variation de $h$], "Variation")),
      domain: ($2$, $+oo$),
      contents: (
        (
          ($+$),
        ),
        (
          (bottom, $0$),
          (top, $+oo$)
        ),
      )
    )
  ]

  D'après le tableau, pour tout $x in [2;+oo[$, on a $h(x) >= 0$, c'est-à-dire $f(x) - g(x) >= 0 <==> f(x) >= g(x)$.
  
  La courbe $cal(C)_f$ est donc toujours au-dessus de la courbe $cal(C)_g$ sur l'intervalle $[2;+oo[$.
] else [
  #acompleter()
]
