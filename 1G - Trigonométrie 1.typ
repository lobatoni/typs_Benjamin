#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Trigonométrie - 1/2]

#historique[Il faut remonter jusqu'aux Babyloniens, 2000 ans avant notre ère, pour trouver les premières traces de tables de données astronomiques. Car à la base, la trigonométrie est une géométrie appliquée à l'étude du monde, de l'univers et est indissociable de l'astronomie.\
Mais on attribue à Hipparque de Nicée (-190 ; -120) les premières tables trigonométriques. Elles font correspondre l'angle au centre et la longueur de la corde interceptée dans le cercle.\
Le grec Claude Ptolémée (90? ; 160?) poursuit dans l'Almageste les travaux d'Hipparque avec une meilleure précision et introduit les premières formules de trigonométrie. Ces travaux fondateurs établirent les bases de la trigonométrie moderne, science qui allait révolutionner la navigation, l'astronomie et les mathématiques appliquées.]

= Le cercle trigonométrique

#definition[
Soit le plan muni d'un repère orthonormé $(O; arrow(i), arrow(j))$.

On appelle *_cercle trigonométrique_* le cercle de centre $O$, de rayon 1 et orienté dans le sens inverse des aiguilles d'une montre (antihoraire).
]

#grid(
  columns: (2fr, 1fr),
  align: horizon,
  [
    #remarque[
    On appelle le sens inverse des aiguilles d'une montre *_sens direct_* ou *_sens trigonométrique_*. On parle d'orientation positive.

    Le sens contraire (horaire) est le *_sens indirect_*. On parle d'orientation négative.
    ]
  ],
  [
    #align(center)[#image("images/14_cercl.PNG", width: 60%)]
  ]
)

= Enroulement de la droite numérique

== Principe de l'enroulement

On considère le cercle trigonométrique $cal(C)$.

On trace la tangente au cercle en $I$ et on munit cette droite d'un repère $(I,A)$ avec $I A = O I = 1$ qui correspond à la droite réelle.

On "enroule" la droite des réels autour de $cal(C)$ : la demi-droite $[I A)$ dans le sens direct et la demi-droite $[I A')$ dans le sens indirect.

#propriete[
Tout point $N$ d'abscisse $x$ de la droite des réels vient se superposer à un point $M$ du cercle.

On associe ainsi à tout réel $x$ un unique point $M$ du cercle trigonométrique grâce à cet enroulement.
]

#align(center)[#image("images/trigo1.PNG", width: 40%)]

#grid(
  columns: (2fr, 1fr),
  align: horizon,
  [
    #exemples[

    - Le point $P$ d'abscisse $pi$ vient se superposer à $K$ (sens direct).

      $K$ est associé au nombre réel $pi$.
      La longueur de l'arc $overparen(I K)$ est égale à $pi$.

    - Le point $B'$ d'abscisse $-pi/2$ vient se superposer à $L$ (sens indirect).

      $L$ est associé au nombre réel $-pi/2$.
      La longueur de l'arc $overparen(I L)$ est égale à l'opposé de $-pi/2$.
    ]
  ],
  [
    #align(center)[#image("images/14_enroul.PNG", width: 50%)]
  ]
)

== Placement sur le cercle trigonométrique

Pour simplifier la lecture graphique sur le cercle trigonométrique on note le nombre réel au même endroit que son point image sur le cercle.

Placer les réels suivants sur le schéma ci-dessous :

- $pi, 2pi, pi/2, pi/4, pi/3$
- $-pi, -2pi, -pi/2, -pi/4, -pi/3$
- Compléter les derniers points.

#align(center)[
#if prof [
  #image("images/14_cercl2.PNG", width: 40%)
] else [
  #image("images/trigo_1.png", width: 40%)
]
]

#remarque[
À chaque point de la droite des réels correspond un unique point sur le cercle, mais inversement, à tout point du cercle correspond une infinité de points sur la droite, tous distincts de $k times 2pi$ où $k$ est un nombre de tours.
]

#exemple[
Le point $J$ du cercle correspond au réel $pi/2$, mais aussi aux réels...

#if prof [
  $pi/2 + 2pi = (5pi)/2$, $space$ $pi/2 + 4pi = (9pi)/2$, $space$ $pi/2 - 2pi = -(3pi)/2$, etc.
] else [
  #acompleter()
]
]

#proprietes[
- Les réels $x + k times 2pi$, où $k in ZZ$, ont le même point image.
- Deux réels $x_1$ et $x_2$ ont le même point image si et seulement si leur différence est un multiple de $2pi$,

  autrement dit : si et seulement s'il existe un entier relatif $k$ tel que $x_2 = x_1 + 2k pi$
]

= Radians (rad)

== Définition

#definition[
- Soit $M$ le point image du nombre 1 sur le cercle trigonométrique.

  On définit *_un radian_*, noté *_1 rad_*, comme étant la longueur de l'arc $overparen(I M)$.

- La *_mesure en radian d'un angle_* est la longueur de l'arc que cet angle intercepte sur le cercle trigonométrique.
]

#align(center)[#image("images/trigo_2.png", width: 60%)]

== Correspondance degrés / radians

On peut déterminer une correspondance entre les degrés et les radians. (Le périmètre du cercle est de $2pi$ puis l'on raisonne par proportionnalité).

#if prof [
  #align(center)[
  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 0.7em,
    align: center + horizon,
    [deg], [$0$], [$30$], [$45$], [$60$], [$90$], [$120$], [$135$], [$150$], [$180$], [$270$], [$360$],
    [rad], 
    [$0$], [$pi/6$], [$pi/4$], [$pi/3$], [$pi/2$], [$(2pi)/3$], [$(3pi)/4$], [$(5pi)/6$], [$pi$], [$-(pi)/2$], [$2pi$]
  )]
] else [  
  #align(center)[
  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 0.7em,
    align: center + horizon,
    [deg], [$0$], [$30$], [$45$], [$60$], [$90$], [$120$], [$135$], [$150$], [$180$], [$270$], [$360$],
    [rad], 
    [], [], [], [], [], [], [], [], [], [], []    
  )]
]

== Mesure principale d'un angle orienté

#definition[
La mesure principale d'un angle orienté est la mesure en radians, qui parmi toutes les autres, se situe dans l'intervalle $]-pi; pi]$
]

#exemple[
Donner la mesure principale de l'angle $(27pi)/4$.

#if prof [
  On retranche plusieurs fois $2pi$ jusqu'à ce que la mesure soit comprise dans l'intervalle $]-pi; pi]$ :

  $2pi = (8pi)/4$, donc $(27pi)/4 - 3 times (8pi)/4 = (3pi)/4$

  La mesure principale de $(27pi)/4$ est $(3pi)/4$.
] else [
  #acompleter()
]
]
