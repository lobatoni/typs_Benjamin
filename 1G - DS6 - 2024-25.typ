#import "@local/configbenji:1.0.0": *
#show: body => apply-template(
  classe: "Première Générale",
  eval: "Devoir Surveillé n°6",
  date: "22 mai 2025",
  body
)

#historique[
  Calculatrice autorisée.\
  Les exercices peuvent être traités dans l'ordre de votre choix.\
  Toutes les réponses doivent être justifiées.\
  Durée : 1 heure.
]

#exercice(titre:"Étude de fonction et exponentielle",points: "4")[
On considère la fonction $f$ définie sur $]-oo;-2[" "union" "]-2;+oo[$ par :
$ f(x) = (2e^(x+2))/(2+x) $

#v(0.5em)

1. Calculer la dérivée $f'(x)$ de la fonction $f$.

2. Résoudre l'équation $f'(x) = 0$.

3. Étudier le signe de $f'(x)$ sur $]-oo;-2[" "union" "]-2;+oo[$.

4. Dresser le tableau de variations de la fonction $f$.\
   On précisera les valeurs exactes des extremums et des limites.
]

#exercice(titre:"Probabilités conditionnelles",points: "4")[
Dans un lycée, $60\%$ des élèves sont des filles. Parmi les filles, $35\%$ choisissent la spécialité mathématiques. Parmi les garçons, $55\%$ choisissent cette spécialité.

On choisit au hasard un élève de ce lycée.
On note :
- $F$ l'événement "l'élève est une fille" ;
- $M$ l'événement "l'élève suit la spécialité mathématiques".

#v(0.5em)

1. Représenter la situation par un arbre pondéré.

2. Calculer la probabilité que l'élève choisi soit une fille qui suit la spécialité mathématiques.

3. Montrer que $P(M) = 0,43$.

4. Calculer la probabilité que l'élève soit un garçon sachant qu'il suit la spécialité mathématiques.
]

#pagebreak()

#exercice(titre:"Trigonométrie et suites",points: "7")[
#v(0.5em)

On considère le cercle trigonométrique de centre O et de rayon $1$.

1. Résoudre dans $[0;2pi]$ l'équation : $cos(x) = 1/2$

2. Déterminer les valeurs exactes de $cos(pi/3)$ et $sin(pi/3)$.
   
On considère la suite $(u_n)$ définie pour tout entier naturel $n$ par :
$ u_n = cos((n pi) / 3) + 2 $

3. Calculer les valeurs exactes de $u_0$, $u_1$, $u_2$, $u_3$, $u_4$ et $u_5$.

4. Démontrer que pour tout entier naturel $n$ :
   $ u_(n+6) = u_n $

5. La suite $(u_n)$ est-elle arithmétique ? géométrique ? Justifier.

6. Calculer la somme $S = sum_(n=0)^17 u_n$ #h(3em)$(=u_0 + u_1 + u_2 + ... + u_17$)
]