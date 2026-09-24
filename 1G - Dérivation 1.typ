#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Dérivation - 1/3]

#historique[Le concept de dérivée trouve ses origines dans les travaux de Pierre de Fermat (1601-1665) sur la recherche des tangentes et des extremums. Fermat développa une méthode pour déterminer les tangentes aux courbes en considérant des points "infiniment proches". Isaac Newton (1643-1727) et Gottfried Wilhelm Leibniz (1646-1716) formalisèrent indépendamment ces idées vers 1665-1675, créant le calcul différentiel. Newton s'intéressait principalement aux applications physiques (vitesse, accélération), tandis que Leibniz développa une notation systématique encore utilisée aujourd'hui. Le concept de limite, essentiel à la définition moderne de la dérivée, fut rigoureusement établi par Augustin-Louis Cauchy au XIXe siècle.]

= Nombre dérivé

== Pente d'une droite

#rappel[
Soit une fonction $f$ définie sur un intervalle $I$. Soit deux réels $a$ et $b$ appartenant à $I$ tels que $a < b$. Soit $A$ et $B$ deux points de la courbe représentative de $f$ d'abscisses respectives $a$ et $b$.

La *_pente_* (ou *_coefficient directeur_*) de la droite $(A B)$ est égale à $display((f(b) - f(a))/(b - a))$.
]

#remarque[
On appelle également cette pente le *_taux d'accroissement_*, ou *_taux de variation_*, de la fonction $f$ entre $a$ et $b$.
]

#align(center)[#image("images/derivation_1.png", width: 40%)]

#exemple[
Soit #align(center,[#fonction($f$,$RR$,$RR$,$x$,$x^3$)])

Déterminer le taux d'accroissement de $f$ entre $1$ et $3$.

#if prof [
  $(f(3) - f(1))/(3 - 1) = (3^3 - 1^3)/(3 - 1) = (27 - 1)/2 = 26/2 = 13$
] else [
  #acompleter()
]
]

#remarques[
On retrouve parfois dans d'autres matières des notations différentes pour le taux d'accroissement. Par exemple en sciences physiques : $(Delta y)/(Delta x)$ quand $y$ varie en fonction de $x$.
]

== Dérivabilité d'une fonction en un point

On utilise souvent une autre formule pour exprimer le taux d'accroissement d'une fonction.

#propriete[
Soit une fonction $f$ définie sur un intervalle $I$. Soit un réel $a$ appartenant à $I$. Soit $A$ et $M$ deux points de la courbe représentative de $f$ d'abscisses respectives $a$ et $a + h$, avec $h$ un réel différent de zéro.

La pente de la droite $(A M)$ est égale à $display((f(a + h) - f(a))/h)$.
]

#demonstration[
#if prof [
  L'abscisse du point $M$ est $a + h$ et celle du point $A$ est $a$. La pente de $(A M)$ est donc $(f(a + h) - f(a))/((a + h) - a) = (f(a + h) - f(a))/h$.
] else [
  #acompleter()
]
]

#align(center)[#image("images/derivation_2.png", width: 40%)]

Plus le point $M$ est proche du point $A$, plus $h$ est proche de zéro. La valeur limite de la pente de la droite $(A M)$ quand $h$ tend vers $0$ permet de définir la *_dérivabilité de la fonction $f$ en $a$_*.

#definitions[
Soit une fonction $f$ définie sur un intervalle $I$. Soit $a$ et $a + h$ deux réels de $I$ avec $h != 0$.

- On dit que $f$ est *_dérivable en $a$_* si la quantité : $(f(a + h) - f(a))/h$ admet une limite finie quand $h$ tend vers 0.

- On appelle cette limite *_nombre dérivé de $f$ en $a$_* et on le note *$f'(a)$*.
]

#exemples[
Déterminer le nombre dérivé pour la fonction demandée à l'abscisse demandée.

1. $f$ définie sur $RR$ par $f(x) = x^2 + 2$ pour $a = 2$.

2. $g$ définie sur $RR without {-1}$ par $g(x) = 3/(x + 1)$ pour $a = 1$.

#if prof [
  1. $(f(2 + h) - f(2))/h = ((2 + h)^2 + 2 - (2^2 + 2))/h = (4 + 4h + h^2 + 2 - 4 - 2)/h = (h^2 + 4h)/h = h + 4$
  
     La limite de la quantité $h + 4$ quand $h$ tend vers $0$ existe bien et elle vaut $4$. Donc, $f'(2) = 4$.
  
  2. $(g(1 + h) - g(1))/h = (3/((1 + h) + 1) - 3/(1 + 1))/h = (3/(h + 2) - 3/2)/h$
  
     $= (3 times 2 - 3 times (h + 2))/((h + 2) times 2) / h = (6 - 3h - 6)/(2h + 4) / h = (-3h)/(2h^2 + 4h) = (-3)/(2h + 4)$
  
     La limite de la quantité $(-3)/(2h + 4)$ quand $h$ tend vers $0$ existe bien et elle vaut $-3/4$. Donc, $g'(1) = -3/4$.
] else [
  #acompleter()
]
]

#remarque[
Certaines fonctions peuvent ne pas être dérivables en un réel $a$.

Par exemple, la fonction racine carrée n'est pas dérivable en 0.
]

#demonstration[
#if prof [
  Soit #align(center,[#fonction($f$,$RR^+$,$RR$,$x$,$sqrt(x)$)])
  
  $(f(0 + h) - f(0))/h = (sqrt(0 + h) - sqrt(0))/h = sqrt(h)/h = sqrt(h)/(sqrt(h) times sqrt(h)) = 1/sqrt(h)$
  
  Quand $h$ tend vers $0$, la quantité $1/sqrt(h)$ prend des valeurs de plus en plus grandes. Il n'y a pas de limite finie (la limite est en réalité $+oo$), et la fonction $f$ n'est donc pas dérivable en $0$.
] else [
  #acompleter()
]
]

= Tangente à la courbe d'une fonction

#definition[
Soit $f$ une fonction dérivable en un réel $a$.

La tangente à la courbe représentative $cal(C)_f$ de la fonction $f$ au point d'abscisse $a$ dans un repère est la droite qui passe par $A(a ; f(a))$ et qui a pour coefficient directeur $f'(a)$.
]

#propriete[
Soit $f$ une fonction dérivable en un réel $a$ et le point $A(a, f(a))$.

La tangente à la courbe représentative $cal(C)_f$ de la fonction $f$ au point d'abscisse $a$ a pour équation réduite $ y = f'(a)(x - a) + f(a) $
]

#demonstration[
#if prof [
  La tangente a pour pente $f'(a)$ donc son équation est de la forme : $y = f'(a) x + b$, où $b$ est l'ordonnée à l'origine.
  
  Déterminons $b$ :
  
  La tangente passe par le point $A(a ; f(a))$ donc $f(a) = f'(a) times a + b$, soit $b = f(a) - f'(a) times a$
  
  On en déduit que l'équation de la tangente peut s'écrire\
  $y = f'(a) x + f(a) - f'(a) times a = f'(a)(x - a) + f(a)$.
] else [
  #acompleter()
]
]

#exemple[
Soit la fonction trinôme définie sur $RR$ par $f(x) = x^2 + 2x - 3$.

Déterminer une équation de la tangente à la courbe représentative de $f$ au point d'abscisse $2$.

#if prof [
  Commençons par vérifier que $f$ est dérivable en $2$ :
  
  $(f(2 + h) - f(2))/h = ((2 + h)^2 + 2(2 + h) - 3 - (2^2 + 2 times 2 - 3))/h$
  
  $= (4 + 4h + h^2 + 4 + 2h - 3 - 4 - 4 + 3)/h = (h^2 + 6h)/h = h + 6$.
  
  Donc $f'(2) = 6$.
  
  Ainsi, l'équation de la tangente est de la forme $y = 6(x - 2) + f(2) = 6x - 12 + 2^2 + 2 times 2 - 3 = 6x - 7$.
  
  Une équation de la tangente à la courbe représentative de $f$ au point d'abscisse 2 est $y = 6x - 7$.
] else [
  #acompleter()
]
]
