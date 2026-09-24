#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Trigonométrie - 2/2]

#historique[
  Après Ptolémée, les développements significatifs de la trigonométrie furent réalisés en Inde. L'astronome et mathématicien indien Aryabhata (476 ; 550), dans son ouvrage Arya-Siddhanta, définit pour la première fois le sinus à partir de la relation entre la moitié d'un angle et la moitié d'une corde, tout en définissant également le cosinus, le contre-sinus (ou sinus verse), et l'inverse du sinus.

  Les travaux indiens furent traduits plus tard et furent améliorés par les mathématiciens islamiques. Au Xe siècle, le mathématicien perse Muhammad ibn Mūsā al-Khwārizmī produisit des tables des sinus et des tangentes, et apporta aussi sa contribution à la trigonométrie sphérique.

  Le traité Canon doctrinæ triangulorum (1551) de Georg Joachim Rheticus, un élève de Copernic, fut probablement le premier ouvrage dans lequel les fonctions trigonométriques étaient définies directement en termes de triangles rectangles au lieu de cercles.
]

= Cosinus et sinus d'un nombre réel

== Définitions

#definition[
  Soit le plan muni d'un repère $(O;arrow(i),arrow(j))$. On considère un réel $x$ quelconque et on appelle $M$ le point du cercle trigonométrique associé à $x$.

  - L'abscisse du point $M$ est le *_cosinus_* du réel $x$, noté $cos(x)$ ou $cos x$.
  - L'ordonnée du point $M$ est le *_sinus_* du réel $x$, noté $sin(x)$ ou $sin x$.

  On a donc $M(cos(x) ; sin(x))$.
]

#align(center)[
  #image("images/14_cercl4.PNG", width: 35%)
]

#exemples[
  - Le nombre réel $pi/2$ correspond au point $J$ d'où $cos pi/2 = 0$ et $sin pi/2 = 1$.
  - Le nombre réel $0$ correspond au point $I$ d'où $cos(0) = 1$ et $sin(0) = 0$.
  - Pour $-pi/2$ on a #if prof [$cos(-pi/2) = 0$ et $sin(-pi/2) = -1$.] else [...]
]

#if not prof [
  #acompleter()
]

*Lien avec les formules de trigonométrie dans le triangle rectangle OEM :*

#if prof [
  Si $x in lr(bracket.r 0";"pi/2 bracket.l)$ (le raisonnement est analogue sur les autres intervalles, mais il faut faire attention aux signes) :

  $cos(hat(E O M)) = "adjacent"/"hypoténuse" = (O E)/(O M) = (O E)/1 = cos(x)$.

  $sin(hat(E O M)) = "opposé"/"hypoténuse" = (E M)/(O M) = (O F)/1 = sin(x)$.
] else [
  #acompleter()
]

== Propriétés

#proprietes[
  Pour tout réel $x$ on a :

  - $-1 <= cos x <= 1$ et $-1 <= sin x <= 1$
  - $cos^2 x + sin^2 x = 1$
]

#remarque[
  $cos^2 x$ et $sin^2 x$ s'écrivent aussi $(cos x)^2$ et $(sin x)^2$.
]

#demonstrations[

  #if prof [
    La première propriété découle directement de la définition, le cercle trigonométrique étant de rayon 1.

    La deuxième propriété se démontre avec le théorème de Pythagore, par disjonction de cas (étude de tous les cas possibles).

    Pour $x in ]0; pi/2[$, dans le triangle $O E M$ rectangle en $E$ :
    $O E^2 + E M^2 = O M^2 <==> cos^2 x + sin^2 x = 1$

    Le résultat est valable par symétrie sur les intervalles $lr(bracket.r pi/2";"pi bracket.l)$, $lr(bracket.r -pi";"-pi/2 bracket.l)$, $lr(bracket.r -pi/2";"0 bracket.l)$.

    Les cas particuliers $0$, $pi/2$, $pi$, $-pi/2$ se vérifient par calcul.
  ] else [
    #acompleter()
  ]
]

== Valeurs remarquables

#grid(
  columns: (2fr, 1fr),
  align: horizon,
  [
    #align(center)[
      #table(
        columns: 7,
        inset: 0.7em,
        align: center + horizon,
        [Valeur de $x$ en radians], [$0$], [$pi/6$], [$pi/4$], [$pi/3$], [$pi/2$], [$pi$],
        [$sin x$], [$0$], [$1/2$], [$sqrt(2)/2$], [$sqrt(3)/2$], [$1$], [$0$],
        [$cos x$], [$1$], [$sqrt(3)/2$], [$sqrt(2)/2$], [$1/2$], [$0$], [$-1$]
      )
    ]
  ],
  [
    #align(center)[#image("images/14_angrem.PNG", width: 80%)]
  ]
)

#demonstration[
  - Démontrons que $sin(pi/4) = sqrt(2)/2$

    La mesure $pi/4$ rad est égale à la mesure $45°$

    #align(center)[
      #image("images/trigonometrie_1.png", width: 17%)
    ]

    #if prof [
      Le triangle $O H M$ est rectangle et isocèle en $H$ ; en effet l'angle $hat(O M H)$ est égal à $180° - 90° - 45° = 45°$.

      Donc $H O = H M$ et donc $sin(pi/4) = cos(pi/4)$

      Or,
      $
      cos^2(pi/4) + sin^2(pi/4) = 1 &<==> sin^2(pi/4) + sin^2(pi/4) = 1\
      &<==> 2 sin^2(pi/4) = 1\
      &<==> sin^2(pi/4) = 1/2\
      &<==> sin(pi/4) = sqrt(1/2) = 1/sqrt(2) = sqrt(2)/2 quad "car" sin(pi/4) "est positif"
      $
    ] else [
      #acompleter()
    ]

  - Démontrons que $cos(pi/3) = 1/2$ et $sin(pi/3) = sqrt(3)/2$

    La mesure $pi/3$ rad est égale à la mesure $60°$

    #align(center)[
      #image("images/trigonometrie_2.png", width: 20%)
    ]

    #if prof [
      Le triangle $O M A$ est isocèle en $O$ ; en effet $O A = O M$.

      Donc, les angles $hat(O M A)$ et $hat(M A O)$ sont égaux à $(180° - 60°) : 2 = 60°$.

      Donc le triangle $O M A$ est équilatéral.

      Ainsi, la hauteur $(M H)$ est également une médiane du triangle. Elle coupe donc $[O A]$ en son milieu.

      On a donc $cos(pi/3) = 1/2$.

      Or,
      $
      cos^2(pi/3) + sin^2(pi/3) = 1 &<==> (1/2)^2 + sin^2(pi/3) = 1\
      &<==> sin^2(pi/3) = 1 - (1/2)^2\
      &<==> sin^2(pi/3) = 1 - 1/4\
      &<==> sin^2(pi/3) = 3/4\
      &<==> sin(pi/3) = sqrt(3/4) = sqrt(3)/2 quad "car" sin(pi/3) "est positif"
      $
    ] else [
      #acompleter()
    ]
]

#remarque[
  On en déduit le schéma suivant :

  #align(center)[
    #image("images/cerc_cos_sin.png", width: 42%)
  ]
]

= Propriétés des fonctions cosinus et sinus

== Définition

#definition[
  - La fonction qui, à tout réel $x$, associe le nombre $cos(x)$ est appelée *_fonction cosinus_*.
  - La fonction qui, à tout réel $x$, associe le nombre $sin(x)$ est appelée *_fonction sinus_*.

  Elles sont toutes deux définies sur $RR$, à valeurs dans l'intervalle $[-1 ; 1]$.
]

== Périodicité

#propriete[
  Les fonctions cosinus et sinus sont *_$2pi$-périodiques_*, c'est-à-dire que, pour tout nombre réel $x$ et pour tout entier relatif $k$ : $"   "cos(x + 2k pi) = cos(x)"    et    "sin(x + 2k pi) = sin(x)$
]

#exemples[
  #if prof [
    - $cos(x + 36 pi) = cos(x + 2 times 18 pi) = cos(x)$.
    - $sin(2pi - x) = sin(-x)$.
  ] else [
    #acompleter()
  ]
]

== Parité

#proprietes[
  - La fonction cosinus est une *_fonction paire_*, c'est-à-dire que, pour tout nombre réel $x$ :
    $cos(-x) = cos(x)$.
  - La fonction sinus est une *_fonction impaire_*, c'est-à-dire que, pour tout nombre réel $x$ :
    $sin(-x) = -sin(x)$.
]

#remarque[
  Cela repose encore sur la définition du cosinus et du sinus par enroulement de la droite réelle sur le cercle trigonométrique et les propriétés de symétrie.
]

#exemples[
  #if prof [
    - $cos(-x + 14 pi) = cos(-x + 2 times 7 pi) = cos(-x) = cos(x)$.
    - $sin(22pi - x) = sin(2 times 11 pi - x) = sin(-x) = -sin(x)$.
  ] else [
    #acompleter()
  ]
]

= Variations des fonctions cosinus et sinus

#proprietes(titre:"(admises)")[
  - La fonction cosinus est décroissante sur $[0 ; pi]$.
  - La fonction sinus est croissante sur l'intervalle $[0 ; pi/2]$ et décroissante sur l'intervalle $[pi/2 ; pi]$.
]

En utilisant la parité des fonctions cosinus et sinus, on obtient leur tableau de variations sur l'intervalle $[-pi ; pi]$

#align(left)[
  #tabvar(
    variable: $x$,
    label: (([Variations de $cos$], "Variation"), ([Variations de $sin$], "Variation")),
    domain: ($-pi$, $-pi/2$, $0$, $pi/2$, $pi$),
    contents: (
      (
        (bottom, $-1$),
        (top, $0$),
        (bottom, $1$),
        (top, $0$),
        (bottom, $-1$)
      ),
      (
        (top, $0$),
        (bottom, $-1$),
        (top, $0$),
        (bottom, $1$),
        (top, $0$)
      ),
    )
  )
]

Les variations des fonctions cosinus et sinus sur $RR$ se déduisent des variations sur l'intervalle $[-pi ; pi]$ en utilisant la $2pi$-périodicité de ces deux fonctions.

= Représentations graphiques des fonctions cosinus et sinus

#definition[
  Dans le plan muni d'un repère orthogonal $(O,arrow(i),arrow(j))$, les fonctions cosinus et sinus sont représentées par deux courbes appelées *_sinusoïdes_*.
]

#align(center)[
  #image("images/Representations_graphiques_sinus_cosinus.png", width: 50%)
]

#remarques[
  - Les courbes sont invariables par translation de vecteur $2pi arrow(i)$ (périodicité).
  - La courbe de la fonction cosinus est symétrique par rapport à l'axe des ordonnées (parité).
  - La courbe de la fonction sinus est symétrique par rapport à $O$ (imparité).
]
