#import "@local/configbenji:1.0.0": *
#show: body => apply-template(
  classe: "Première Générale",
  eval: "Devoir Surveillé n°5",
  date: "3 avril 2025",
  body
)

#historique[
  Calculatrice autorisée.\
  Les exercices peuvent être traités dans l'ordre de votre choix.\
  Toutes les réponses doivent être justifiées.
]

#exercice("Étude de fonction",points: "6")[

On s'intéresse à la consommation d'un véhicule en fonction de sa vitesse.

*Partie A*

Le graphique ci-dessous représente la consommation d'essence en litres pour 100 km en fonction de la vitesse en $"km.h"^(-1)$ du véhicule.

#align(center)[#image("images/1G - DS5 - 1.PNG", width: 90%)]

Avec la précision permise par le graphique, répondre aux questions suivantes :

1. Quelle est la consommation du véhicule lorsque celui-ci roule à 40 $"km.h"^(-1)$ ?
2. Pour quelle(s) vitesse(s) le véhicule consomme-t-il 8 litres pour 100 km ?
3. Pour quelle vitesse la consommation du véhicule semble-t-elle minimale ?

*Partie B*

Si on note $x$ la vitesse du véhicule en $"km.h"^(-1)$, avec $30<=x<=130$, la consommation d'essence en litres pour 100 km est modélisée par la fonction $f$ d'expression :
$ f(x)=(20x^2-1600x+40000)/x^2. $
On désigne par $f'$ la fonction dérivée de la fonction $f$ sur l'intervalle $[30;130]$.

1. Montrer que pour tout $x in [30;130]$,
  $ f'(x) = 800(2x-100)/x^3. $
2. Démontrer la conjecture de la question 3.
]

#exercice("Suites numériques",points: "4")[

Un commerçant constate que chaque semaine, il perd 20% de sa clientèle mais gagne 3 nouveaux clients. La première semaine, il a 4 clients.

On note $(u_n)$ la suite qui modélise le nombre de clients $n$ semaines plus tard. On a donc $u_0 = 4$ et pour tout entier naturel $n$ :
$ u_(n+1) = 0,8 u_n + 3 $

1. Calculer $u_1$, $u_2$ et $u_3$, arrondis à l'unité près.
2. On pose, pour tout entier naturel $n$ :
  $ v_n = u_n - 15 $. 
   1. Montrer que la suite $(v_n)$ est une suite géométrique dont on précisera la raison et le premier terme.
   2. Exprimer $v_n$ puis $u_n$ en fonction de $n$.
3. Déterminer la limite de la suite $(u_n)$. Interpréter ce résultat dans le contexte de l'exercice.
]

#v(3em)

#exercice("Trigonométrie",points: "4")[

*Partie A*
#align(center)[
#cetz.canvas(length: 3cm, {
  import cetz.draw: *

  set-style(
    mark: (fill: black, scale: 2),
    stroke: (thickness: 0.4pt, cap: "round"),
    angle: (
      radius: 0.3,
      label-radius: .22,
      fill: green.lighten(80%),
      stroke: (paint: green.darken(50%))
    ),
    content: (padding: 1pt)
  )

  grid((-1.5, -1.5), (1.4, 1.4), step: 0.5, stroke: gray + 0.2pt)

  circle((0,0), radius: 1)

  line((-1.5, 0), (1.5, 0), mark: (end: "stealth"))
  content((), $ x $, anchor: "west")
  line((0, -1.5), (0, 1.5), mark: (end: "stealth"))
  content((), $ y $, anchor: "south")

  for (x, ct) in ((1, $ 1 $),(0, $ 0 $)) {
    line((x, 3pt), (x, -3pt))
    content((), anchor: "north-east", ct)
  }

  for (y, ct) in ((1, $ 1 $),) {
    line((1pt, y), (-1pt, y))
    content((), anchor: "north-east", ct)
  }

/*   // Draw the green angle
  cetz.angle.angle((0,0), (1,0), (1, calc.tan(30deg)),
    label: text(green, [#sym.alpha]))

  line((0,0), (1, calc.tan(30deg)))

  set-style(stroke: (thickness: 1.2pt))

  line((30deg, 1), ((), "|-", (0,0)), stroke: (paint: red), name: "sin")
  content(("sin.start", 50%, "sin.end"), text(red)[$ sin alpha $])
  line("sin.end", (0,0), stroke: (paint: blue), name: "cos")
  content(("cos.start", 50%, "cos.end"), text(blue)[$ cos alpha $], anchor: "north")
  line((1, 0), (1, calc.tan(30deg)), name: "tan", stroke: (paint: orange))
  content("tan.end", $ text(#orange, tan alpha) = text(#red, sin alpha) / text(#blue, cos alpha) $, anchor: "west") */
})]

1. Placer sur le cercle trigonométrique ci-dessus les points correspondant aux angles suivants :\

   A$(pi/6)$, B$((2pi)/3)$, C$(-pi/4)$ et D$((7pi)/4)$.
2. Déterminer les coordonnées exactes des points A, B, C et D dans le repère.

#v(4em)

*Partie B*

1. Résoudre dans $[-pi;pi]$ l'équation $cos(x) = 1/2$.
2. Résoudre dans $[-pi;pi]$ l'équation $sin(x) = 0$.
]

#v(3em)

#exercice("Produit scalaire",points: "6")[
  
_Dans cet exercice, on pourra s'aider d'une figure (au brouillon ou sur la copie), notamment pour la partie B, mais tous les résultats doivent être justifiés algébriquement._

*Partie A*

Dans le plan muni d'un repère orthonormé $("O"; arrow(i), arrow(j))$, on considère les points A$(1; 3)$, B$(4; 5)$ et C$(5; 0)$.

#v(0.5em)

1. Calculer les coordonnées des vecteurs $arrow("AB")$ et $arrow("AC")$.
2. Déterminer le produit scalaire $arrow("AB") dot arrow("AC")$.
3. Calculer les normes $||arrow("AB")||$ et $||arrow("AC")||$.
4. En déduire la mesure de l'angle $hat("BAC")$ (en degrés, arrondie à 0,1° près).

#v(0.5em)

*Partie B*

#v(0.5em)

On considère un point D de coordonnées $(x; y)$ tel que les vecteurs $arrow("AB")$ et $arrow("CD")$ soient orthogonaux.

1. Exprimer cette condition d'orthogonalité à l'aide d'un produit scalaire.
2. Donner un exemple de point D vérifiant cette condition.
3. Démontrer que l'ensemble des points D vérifiant la condition d'orthogonalité forme une droite.\
  _On rappelle qu'une équation cartésienne de droite est de la forme :\
  $a x+b y+c=0$, avec $(a;b;c) in RR^3$ et $(a;b) in.not (0;0)$._
]