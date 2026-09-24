#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = false

#titre[Second degré - 1/2]

#historique[L'étude des fonctions du second degré remonte à l'Antiquité, avec des contributions significatives des mathématiciens babyloniens et grecs. Les Babyloniens utilisaient des méthodes géométriques pour analyser des courbes paraboliques dès 2000 av. J.-C. Plus tard, les mathématiciens grecs comme Euclide et Apollonius ont approfondi l'étude des coniques, incluant les paraboles. Au IXe siècle, le mathématicien persan Al-Khawarizmi a systématisé l'analyse des courbes quadratiques dans son ouvrage "Kitab al-jabr wal-muqabala". Les méthodes modernes d'analyse des fonctions du second degré, incluant la représentation graphique et l'étude des sommets et des axes de symétrie, ont été formalisées au cours de la Renaissance.]

= Fonction polynôme de degré 2

#definition[
On appelle *_fonction polynôme de degré 2_* toute fonction #align(center,[#fonction($f$,$RR$,$RR$,$x$,$a x^2 + b x + c$)])

où $a$, $b$, $c$ sont des réels fixés et $a != 0$.
]

#remarque[
Une fonction polynôme de degré 2 s'appelle également fonction trinôme du second degré ou, par abus de langage, « trinôme ».
]

#exemples[
Ces fonctions définies sur $RR$ sont-elles des fonctions polynôme du second degré ?

1. $x |-> 3x^2 - 7x + 3$
2. $x |-> 4 - 2x^2$
3. $x |-> (x - 4)(5 - 2x)$
4. $x |-> 5x - 3$
5. $x |-> 5x^4 - 7x^2 + 3x - 8$

#if prof [
  1. Oui
  2. Oui
  3. Oui
  4. Non, c'est une fonction polynôme de degré 1 (fonction affine)
  5. Non, c'est une fonction polynôme de degré 4
] else [
  #acompleter()
]
]

= Forme canonique

#propriete[
Pour toute fonction polynôme du 2nd degré #align(center,[#fonction($f$,$RR$,$RR$,$x$,$a x^2 + b x + c$)]) (avec $a, b, c in RR$ et $a != 0$), il existe des réels $alpha$ et $beta$ uniques tels que, pour tout $x$ réel,\
$ f(x) = a(x - alpha)^2 + beta $

Cette écriture s'appelle la *_forme canonique_* de $f$.
]

#demonstration[
#if prof [
  Comme $a != 0$, on peut écrire, pour tout réel $x$ :
  
  $ f(x) &= a(x^2 + b/a x) + c\
  
  &= a[x^2 + b/a x + (b/(2a))^2 - (b/(2a))^2] + c\
  
  &= a[(x + b/(2a))^2 - (b/(2a))^2] + c\
  
  &= a(x + b/(2a))^2 - a dot b^2/(4a^2) + c\
  
  &= a(x + b/(2a))^2 - b^2/(4a) + c\
  
  &= a(x + b/(2a))^2 - (b^2 - 4a c)/(4a)\
  
  &= a(x - alpha)^2 + beta"             , avec "alpha = -b/(2a)" et "beta = -(b^2 - 4a c)/(4a) $
] else [
  #acompleter()
]
]

#remarque[
Pour mettre un trinôme sous forme canonique, on peut utiliser les formules $alpha = -b/(2a)$ et $beta = -(b^2 - 4a c)/(4a)$ ... à condition de les connaître !

Sinon, il est souvent plus facile de procéder par étape comme dans la démonstration.
]

#exemple[
Mettre sous forme canonique la fonction $f$ définie sur $RR$ par $f(x) = 2x^2 - 20x + 10$

#if prof [
  $ f(x) &= 2x^2 - 20x + 10\
  
  &= 2(x^2 - 10x) + 10\
  
  &= 2[(x - 5)^2 - 25] + 10" (car "x^2 - 10x" est le début du développement de "(x - 5)^2")"\
  
  &= 2(x - 5)^2 - 50 + 10\
  
  &= 2(x - 5)^2 - 40 $
] else [
  #acompleter()
]
]

= Variation et représentation graphique

Soit $f$ une fonction polynôme de degré 2 définie par $f(x) = a(x - alpha)^2 + beta$, avec $a != 0$.

#propriete[
- Si $a > 0$, $f$ admet un minimum pour $x = alpha$. Ce minimum est égal à $beta$.
- Si $a < 0$, $f$ admet un maximum pour $x = alpha$. Ce maximum est égal à $beta$.
]

#demonstration[
#if prof [
  Si $a > 0$, alors $a(x - alpha)^2 >= 0$ donc pour tout $x$, $f(x) >= beta$.
  
  Or $f(alpha) = a(alpha - alpha)^2 + beta = a dot 0^2 + beta = beta$.
  
  Donc, $f$ admet un minimum en $alpha$. Ce minimum vaut $f(alpha) = beta$.
  
  La démonstration est analogue pour $a < 0$.
] else [
  #acompleter()
]
]

#definitions[
La représentation graphique dans un repère orthonormé de la fonction $f$ est appelée *_parabole_*.

Son *_sommet_* est le point $S(alpha ; beta)$.

Elle possède un *_axe de symétrie_* qui est la droite d'équation $x = alpha$.
]

- Si $a$ est positif :

#grid(
  columns: (2fr, 1fr),
  align: horizon,
  [
    #align(center)[
      #tabvar(
        variable: $x$,
        label: (([Variations\ de $f$], "Variation"),),
        domain: ($-oo$, $alpha$, $+oo$),
        contents: (
          (
            (top, $+oo$),
            (bottom, $beta$),
            (top, $+oo$)
          ),
        )
      )
    ]
  ],
  [
    #align(center)[#image("images/11_para1.JPG", width: 100%)]
  ]
)

- Si $a$ est négatif :

#grid(
  columns: (2fr, 1fr),
  align: horizon,
  [
    #align(center)[
      #tabvar(
        variable: $x$,
        label: (([Variations\ de $f$], "Variation"),),
        domain: ($-oo$, $alpha$, $+oo$),
        contents: (
          (
            (bottom, $-oo$),
            (top, $beta$),
            (bottom, $-oo$)
          ),
        )
      )
    ]
  ],
  [
    #align(center)[#image("images/11_para2.JPG", width: 100%)]
  ]
)

#exemple[
Déterminer l'axe de symétrie et le sommet de la parabole d'équation $y = 2x^2 - 12x + 1$

#if prof [
  On commence par mettre l'équation sous forme canonique :
  
  $ y &= 2x^2 - 12x + 1\
  
  &= 2(x^2 - 6x) + 1\
  
  &= 2[(x - 3)^2 - 9] + 1\
  
  &= 2(x - 3)^2 - 18 + 1\
  
  &= 2(x - 3)^2 - 17 $
  
  #align(center)[
    #tabvar(
      variable: $x$,
      label: (([Variations\ de $y$], "Variation"),),
      domain: ($-oo$, $3$, $+oo$),
      contents: (
        (
          (top, $+oo$),
          (bottom, $-17$),
          (top, $+oo$)
        ),
      )
    )
  ]
  
  Ainsi, l'équation peut s'écrire $y = 2(x - alpha)^2 + beta$ avec $alpha = 3$ et $beta = -17$.
  
  L'axe de symétrie de la parabole est la droite d'équation $x = 3$.
  
  Son sommet est le point de coordonnées $(3 ; -17)$.
] else [
  #acompleter()
]
]
