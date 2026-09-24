#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Dérivation - 2/3]

#historique[Au XVIIIe siècle, Leonhard Euler (1707-1783) développa systématiquement les règles de dérivation (produit, quotient, composition) et établit les dérivées des fonctions usuelles.\
Joseph-Louis Lagrange (1736-1813) introduisit la notation f'(x) pour la dérivée et développa la théorie des fonctions dérivées successives. Ces travaux permirent l'essor du calcul différentiel comme outil fondamental en mathématiques et en physique, facilitant l'étude des phénomènes naturels.]

= Fonction dérivée

#definition[
Soit $f$ une fonction définie sur un intervalle $I$.
- On dit que $f$ est *_dérivable_* sur $I$ lorsque $f$ admet un nombre dérivé pour tout réel $x$ de $I$, noté $f'(x)$.
- On appelle *_fonction dérivée_* de $f$ sur $I$, notée $f'$, la fonction définie sur $I$ par $f' : x arrow.bar f'(x)$.
]

#exemple[
Montrons qu'il existe une fonction $f'$ telle que pour tout $x in RR$, $f'(x)$ soit le nombre dérivé en $x$ de la fonction carré $f : RR arrow RR, x arrow.bar x^2$.

#if prof [
  Calculons le nombre dérivé de la fonction $f$ en un nombre réel quelconque $a$ :

  Pour $h eq.not 0$ : 
  $
  (f(a+h)-f(a))/h = ((a+h)^2-a^2)/h = (2a h+h^2)/h = 2a+h
  $

  Quand $h$ tend vers zéro, cette quantité tend vers $2a$.

  À tout nombre $a$, on peut donc associer le nombre dérivé de la fonction carré égal à $2a$.

  On définit ainsi sur $RR$ la fonction dérivée de $f$, notée $f'$, dont l'expression est $f'(x)=2x$.
] else [
  #acompleter()
]
]

= Dérivées des fonctions usuelles

#propriete[
Soit $a,b$ des nombres réels, et $m$ un entier relatif.

#align(center)[
#table(
  columns: 4,
  inset: 0.7em,
  align: center + horizon,
  [$f(x)$], [Domaine de définition], [$f'(x)$], [Intervalle de dérivabilité],
  [$b$], [$RR$], [$0$], [$RR$],
  [$a x+b$], [$RR$], [$a$], [$RR$],
  [$x^m$], [$RR$ si $m$ positif, $RR^*$ sinon], [$m x^(m-1)$], [$RR$ si $m$ positif, $RR^*$ sinon],
  [$sqrt(x)$], [$RR^+$], [$1/(2 sqrt(x))$], [$RR^(+*)$]
)
]
]

#exemples[
Dans chaque cas, donner l'intervalle de dérivabilité et l'expression de la fonction dérivée.

a) $f(x)=x^4$ définie sur $RR$

b) $g(x)=1/x^5$ définie sur $RR^*$

#if prof [
  a) $f$ est dérivable sur $RR$ et $f'(x)=4x^3$.
  
  b) $1/x^5=x^(-5)$ donc $g$ est dérivable sur $RR^*$ et $g'(x)=-5x^(-6)=-5/x^6$.
] else [
  #acompleter()
]
]

#demonstration[
#if prof [
  Cas de la fonction inverse.

  Soit $f : RR^* arrow RR, x arrow.bar 1/x$

  Montrons que pour tout $x in RR^*$, comme $f(x)=x^(-1)$, on a $f'(x)=-x^(-2)=-1/x^2$.

  Pour $h eq.not 0$ et $h eq.not -a$ :
  $
  (f(a+h)-f(a))/h = (1/(a+h)-1/a)/h = ((a-(a+h))/((a+h)a))/h = ((-h)/(a(a+h)))/h = -1/(a(a+h))
  $

  Quand $h$ tend vers zéro, cette quantité tend vers $-1/(a(a+0))=-1/a^2$.

  Pour tout nombre $a$, on associe le nombre dérivé de la fonction $f$ égal à $-1/a^2$.

  Ainsi, pour tout $x in RR^*$, $f'(x)=-1/x^2$.
] else [
  #acompleter()
]
]

= Opérations et dérivées

== Opérations courantes

#propriete[
$u$ et $v$ sont des fonctions dérivables sur un intervalle $I$. $k$ est un réel.

Pour les cas "Inverse" et "Quotient" on suppose de plus que pour tout réel $x in I$, $v(x) eq.not 0$.

Alors les fonctions suivantes sont dérivables sur $I$ et ont pour dérivée :

#align(center)[
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 0.7em,
  align: center + horizon,
  [Opération], [Fonction], [Dérivée],
  [Multiplication par un réel], [$k u$], [$k u'$],
  [Somme de fonctions], [$u+v$], [$u'+v'$],
  [Produit de fonctions], [$u v$], [$u'v + u v'$],
  [Quotient de fonctions], [$u/v$], [$(u'v - u v')/v^2$],
  [Carré], [$u^2$], [$2u'u$],
  [Inverse], [$1/v$], [$- v'/v^2$]
)
]
]

#remarque[
On en déduit que :

- Toute fonction polynôme est dérivable sur $RR$.
- Toute fonction rationnelle est dérivable sur chaque intervalle contenu dans son ensemble de définition.
]

#exemples[
Déterminer les dérivées des fonctions suivantes :

1. $f(x)=x^3+2x+1$ définie sur $RR$.

2. $g(x)=(3x-4)/(x^2+3)$ définie sur $RR$ (en effet pour tout $x$ réel $(x^2+3) eq.not 0$ donc pas de valeur interdite).

#if prof [
  1. On utilise la formule $(u+v)'=u'+v'$ avec $u(x)=x^3$ et $v(x)=2x+1$ d'où $f'(x)=3x^2+2$.

  2. On utilise la formule $(u/v)' = (u' v - u v')/v^2$ avec $cases(u(x)=3x-4 quad & v(x)=x^2+3, u'(x)=3 quad & v'(x)=2x)$

  D'où $g'(x)=(3(x^2+3)-2x(3x-4))/((x^2+3)^2)= (-3x^2+8x+9)/((x^2+3)^2)$.
] else [
  #acompleter()
]
]

#demonstration[
#if prof [
  *Cas du produit de fonctions.*

  Soit deux fonctions $u$ et $v$ et $h$ un réel non nul.

  On veut montrer que quand $h$ tend vers zéro, la quantité $(u v(a+h)-u v(a))/h$ tend vers $u'(a)v(a)+u(a)v'(a)$.

  $
  (u v(a+h)-u v(a))/h &= (u(a+h)v(a+h)-u(a)v(a))/h\
  &= (u(a+h)v(a+h)-u(a)v(a+h)+u(a)v(a+h)-u(a)v(a))/h\
  &= ((u(a+h)-u(a))v(a+h)+u(a)(v(a+h)-v(a)))/h\
  &= (u(a+h)-u(a))/h v(a+h)+u(a)(v(a+h)-v(a))/h
  $

  Quand $h$ tend vers zéro :
  - $(u(a+h)-u(a))/h arrow u'(a)$
  - $v(a+h) arrow v(a)$
  - $(v(a+h)-v(a))/h arrow v'(a)$

  Ce qui donne le résultat souhaité.
] else [
  #acompleter()
]
]

== Composée de fonctions

#propriete[
Soit $a$ et $b$ deux réels avec $a eq.not 0$, et soit $u$ une fonction dérivable sur un intervalle $I$.

- La fonction $f: x arrow.bar u(a x+b)$ est dérivable sur les intervalles qui appartiennent à son domaine de définition et tels que $(a x+b) in I$.
- $f'(x)=a u'(a x+b)$
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

#exemples[
1. Déterminer la dérivée de $f$ définie sur $RR$ par $f(x)=(5x+8)^4$.

2. Déterminer la dérivée de $f$ définie sur $lr(bracket.l 1/2" ; "+oo bracket.l)$ par $f(x)=sqrt(2x-1)$.

#if prof [
  1. Soit $u : RR arrow RR, x arrow.bar x^4$

    On a $f(x)=u(5x+8)$

    $f$ est définie sur $RR$ et $u$ est dérivable sur $RR$, donc, pour tout $x in RR$ :

    $f'(x)=5u'(5x+8)=5 times 4(5x+8)^3=20(5x+8)^3$

  2. Soit $u : RR^+ arrow RR^+, x arrow.bar sqrt(x)$

    $f$ est définie sur $[1/2;+infinity[$ et $u$ est dérivable sur $RR^(+*)$, donc, pour tout $x in ]1/2;+infinity[$ :

    $f'(x)=2u'(2x-1)=2 times 1/(2sqrt(2x-1))=2/(2sqrt(2x-1))=1/sqrt(2x-1)$

    *Attention :* $f$ n'est pas dérivable en $1/2$ car $2x-1=0$ et $u$ n'est pas dérivable en $0$.
] else [
  #acompleter()
]
]

= Cas de la fonction valeur absolue

== Étude de la fonction

#rappel[
La *_valeur absolue_* d'un nombre $a$ est égale à $a$ si $a$ est positif, et au nombre $-a$ si $a$ est négatif.

La valeur absolue de $a$ se note $|a|$.
]

#definition[
La *_fonction valeur absolue_* est la fonction $f : RR arrow RR, x arrow.bar |x|$.
]

#propriete[
La fonction valeur absolue est strictement décroissante sur $RR^-$ et strictement croissante sur $RR^+$.
]

#demonstration[
#if prof [
  $|x|=cases(-x " sur " (-infinity\, 0], x " sur " [0\, +infinity))$

  C'est une fonction affine sur chaque intervalle, de coefficient directeur négatif sur $RR^-$ et positif sur $RR^+$.
] else [
  #acompleter()
]
]

*Représentation graphique :*

#grid(columns:(2fr,1fr),
[#align(center)[
#tabvar(
  variable: $x$,
  label: (([Variations\ de $|x|$], "Variation"),),
  domain: ($-infinity$, $0$, $+infinity$),
  contents: (
    (
      (top, $+infinity$),
      (bottom, $0$),
      (top, $+infinity$)
    ),
  )
)
]],
[#align(center)[
#image("images/derivation_3.png", width:90%)
]])

== Dérivabilité en zéro

#propriete[
La fonction valeur absolue n'est pas dérivable en $0$.
]

#demonstration[
#if prof [
  Soit $f : RR arrow RR, x arrow.bar |x|$

  Calculons le taux d'accroissement en zéro :

  - Si $h<0$, $(f(0+h)-f(0))/h=(|0+h|-|0|)/h=|h|/h=(-h)/h=-1$
  - Si $h>0$, $(f(0+h)-f(0))/h=(|0+h|-|0|)/h=|h|/h=h/h=1$

  Donc, quand $h$ tend vers zéro, le taux d'accroissement de $f$ ne tend pas vers une valeur unique mais dépend du signe de $h$.

  La fonction valeur absolue n'est donc pas dérivable en $0$.
] else [
  #acompleter()
]
]

#remarque[
Si on observe la courbe représentative, on comprend qu'il n'existe pas de tangente à la courbe en $0$.
]
