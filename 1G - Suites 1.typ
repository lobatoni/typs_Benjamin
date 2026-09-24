#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Suites numériques - 1/2]

#historique[Dès l'Antiquité, Archimède de Syracuse (-287 ; -212) met en œuvre une procédure itérative pour trouver une approximation du nombre $pi$. Il encadre le cercle par des polygones inscrits et circonscrits possédant un nombre de côtés de plus en plus grand. Par ce procédé, Archimède donne naissance, sans le savoir, à la notion de suite numérique.\
Vers la fin du XVIIe siècle, des méthodes semblables sont utilisées pour résoudre des équations de façon approchée pour des problèmes de longueurs, d'aires, de volumes...\
Un formalisme plus rigoureux de la notion de suite n'apparaîtra qu'au début du XIXe siècle avec le mathématicien français Augustin-Louis Cauchy (1789-1857), qui développa une théorie complète de la convergence et établit les bases rigoureuses de l'analyse des suites numériques.]

= Définition et notations

#definition[
Une *_suite numérique_* est une fonction définie sur tout ou partie de l'ensemble $NN$ des nombres entiers naturels, à valeurs dans $RR$.
]

#remarques[
- L'image d'un entier naturel $n$ par la suite $u$ peut se noter $u(n)$ ou plus simplement $u_n$ (notation indicielle).
- $u_n$ est le *_terme général_*, ou *_terme d'indice_* $n$, ou *_terme de rang_* $n$ de la suite.
- La suite elle-même se note simplement $u$, ou $(u_n)$, ou $(u_n)_(n in NN)$
]

#exemples[
- Soit la suite #align(center,[#fonction($u$,$NN$,$RR$,$n$,$2n$)])

  $u$ est la suite de terme général $u_n = 2n$ et on a $u_0 = 0$, $u_1 = 2$, $u_2 = 4$, $u_3 = 6$, *etc*.

  C'est la suite des nombres pairs.

- Soit la suite #align(center,[#fonction($v$,$NN$,$RR$,$n$,$n^2$)])

#if prof [
  $v$ est la suite de terme général $v_n = n^2$ et on a $v_0 = 0$, $v_1 = 1$, $v_2 = 4$, $v_3 = 9$, *etc*.
  
  C'est la suite des carrés parfaits.
] else [
  Donner les mêmes informations sur la suite $v$ que pour l'exemple précédent.
  
  #acompleter()
]
]

= Génération d'une suite

On définit une suite en indiquant une formule ou un procédé permettant de générer n'importe quel terme. On utilise deux modes de définition.

== Définition explicite

#definition[
Une suite est définie de façon *_explicite_* lorsque chaque terme s'exprime en fonction de son rang, c'est-à-dire si l'on a une relation du type $u_n = f(n)$ pour une certaine fonction $f$.
]

#exemple[
La suite des carrés parfaits est définie pour $n >= 0$ par $u_n = n^2$.

Le calcul des termes est direct. Par exemple, pour le terme de rang $100$ :

#if prof [
  $u_100 = 100^2 = 10 space 000$.
] else [
  #acompleter()
]
]

== Définition par récurrence

#definition[
Une suite est définie *_par récurrence_* lorsque chaque terme est exprimé en fonction de terme(s) précédent(s) et que l'on connaît l'un des termes (très souvent le terme initial).
]

#remarque[
Pour ce type de suite, le calcul d'un terme ne peut se faire qu'après le calcul du ou des termes précédents.
]

#exemple[
Soit $u$ la suite définie pour $n >= 0$ par $cases(u_0 = 0,u_(n+1) = 2u_n + 1)$

Calculer $u_6$.

#if prof [
  Pour calculer $u_6$, il faut connaître $u_5$, donc $u_4$, donc $u_3$, etc. Il faut donc d'abord calculer $u_1$, puis $u_2$, $u_3$, $u_4$, $u_5$ et enfin $u_6$ :
  
  $u_1 = 2u_0 + 1 = 2 times 0 + 1 = 1$, $u_2 = 2u_1 + 1 = 2 times 1 + 1 = 3$, $u_3 = 7$, $u_4 = 15$, $u_5 = 31$ et finalement $u_6 = 63$.
] else [
  #acompleter()
]
]

= Représentations graphiques d'une suite

Dans un repère $(O; arrow(i); arrow(j))$ du plan, la représentation graphique de la suite $u$ de terme général $u_n$ est l'ensemble des points de coordonnées $(n; u_n)$ pour $n in NN$.

#exemple[
#align(center)[
  #image("images/Graphe_carres_parfaits.png", width: 60%)
  
  *Représentation graphique des premiers termes de la suite des carrés parfaits*
]
]

On peut également placer les nombres $u_0$, $u_1$, $u_2$, etc., sur la droite des réels.

#exemple[
#align(center)[
  #image("images/Droite_suite_Fibonacci.png", width: 70%)
  
  *Représentation graphique des premiers termes de la suite de Fibonacci*
]
]

= Sens de variation d'une suite

== Définitions

#definition[
- Une suite est dite *_croissante_* lorsque chaque terme est supérieur à son précédent, c'est-à-dire lorsque pour tout $n in NN$ on a $u_n <= u_(n+1)$, ou encore $u_(n+1) - u_n >= 0$.
- Une suite est dite *_décroissante_* lorsque chaque terme est inférieur à son précédent, c'est-à-dire lorsque pour tout $n in NN$ on a $u_n >= u_(n+1)$, ou encore $u_(n+1) - u_n <= 0$.
- Une suite dont tous les termes sont égaux est dite *_constante_*.
]

#exemples[
#if prof [
  - La suite des nombres pairs et la suite des carrés parfaits sont croissantes.
  - Soit $u$ la suite de terme général définie pour $n >= 1$ par $u_n = 1/n$.
    
    Pour tout entier $n >= 1$, on a $1/n >= 1/(n+1)$ donc $u$ est décroissante.
  - La suite de Syracuse du nombre 17 n'est ni croissante, ni décroissante.
] else [
  #acompleter()
]
]

#remarque[
Une suite n'a pas forcément le même sens de variation sur tout $NN$, et peut être croissante, décroissante, ou constante par intervalles.
]

#exemples[

1. Soit la suite $(u_n)_(n in NN)$ définie par $u_n = n^2 - 4n + 4$. Démontrer que la suite $u$ est croissante à partir d'un certain rang.
2. Soit la suite $(v_n)_(n in NN^*)$ définie par $v_n = 1/(n(n+1))$. Démontrer que la suite $v$ est décroissante.

#if prof [
  1. On commence par calculer la différence $u_(n+1) - u_n$ :
  
    $
    u_(n+1) - u_n &= (n+1)^2 - 4(n+1) + 4 - (n^2 - 4n + 4)\
    &= n^2 + 2n + 1 - 4n - 4 + 4 - n^2 + 4n - 4\
    &= 2n - 3
    $
    
    On étudie ensuite le signe de $u_(n+1) - u_n$ :
    
    $u_(n+1) - u_n >= 0$ pour $2n - 3 >= 0$ donc pour $n >= 1,5$.
    
    Ainsi pour $n >= 2$ (car $n$ est entier), on a $u_(n+1) - u_n >= 0$.
    
    On en déduit qu'à partir du rang $2$, la suite $u$ est croissante.

  2. On commence par calculer le rapport $v_(n+1)/v_n$ :
  
    $v_(n+1)/v_n = (1/((n+1)(n+2)))/(1/(n(n+1))) = (n(n+1))/((n+1)(n+2)) = n/(n+2)$
    
    Comme $n < n+2$, on a $v_(n+1)/v_n < 1$ et donc $v_(n+1) < v_n$ (car $v_n$ est toujours positif).
    
    On en déduit que pour tout $n in NN^*$, la suite $v$ est décroissante.
] else [
  #acompleter()
]
]

== Variations d'une suite définie par une fonction

#propriete[
Soit $f$ une fonction définie sur $RR^+$ et $(u_n)$ une suite numérique définie sur $NN$ par $u_n = f(n)$.\
Soit $a$ et $b$ deux entiers naturels tels que $a<b$.

- Si $f$ est croissante sur l'intervalle $[a;b]$, alors la suite $(u_n)$ est croissante sur $[a;b]$.
- Si $f$ est décroissante sur l'intervalle $[a;b]$, alors la suite $(u_n)$ est décroissante sur $[a;b]$.
]

#remarque[
  #grid(columns:(4fr,3fr),
  [La réciproque est fausse !\
  La représentation suivante montre une suite décroissante alors que la fonction $f$ correspondante n'est pas décroissante.],

  [#align(center)[#image("images/suites_1.png", width: 60%)]])
]

#exemple[
Pour tout $n in NN$, on donne la suite $(u_n)$ définie par $u_n = 1/(n+1)$. Démontrer que la suite $(u_n)$ est décroissante.

#if prof [
  On considère la fonction associée #align(center,[#fonction($f$,$RR^+$,$RR$,$x$,$1/(x+1)$)])
  
  Ainsi, $u_n = f(n)$.
  
  Étudions les variations de $f$ :
  
  Pour tout $x in RR^+$, $f'(x) = -1/(x+1)^2$
  
  $f'(x) < 0$, donc $f$ est décroissante sur $[0;+oo]$. On en déduit que $(u_n)$ est décroissante.
] else [
  #acompleter()
]
]

= Notion de limite d'une suite

== Suite convergente

#definition[
Si lorsque $n$ devient grand, les termes $u_n$ se rapprochent autant que l'on veut d'un nombre réel $l$, on dit que la suite *_converge_* vers $l$, ou encore que la suite a *_pour limite_* $l$.

On note $lim_(n -> +oo) u_n = l$.
]

#exemple[
Soit la suite $(u_n)_(n in NN^*)$ définie par $u_n = (2n+1)/n$

On construit le tableau de valeurs avec des termes de la suite :

#align(center)[
#table(
  columns: 10,
  inset: 0.7em,
  align: center + horizon,
  [$n$], [$1$], [$2$], [$3$], [$4$], [$5$], [$10$], [$15$], [$50$], [$500$],
  [$u_n$], [$3$], [$2,5$], [$2,333$], [$2,25$], [$2,2$], [$2,1$], [$2,067$], [$2,02$], [$2,002$]
)
]

Plus $n$ devient grand, plus les termes de la suite semblent se rapprocher de 2.

On dit que la suite $(u_n)$ converge vers 2 et on note $lim_(n -> +oo) u_n = 2$.
]

== Suite divergente

#definition[
Une suite qui n'est pas convergente est *_divergente_*.

Soit elle n'a pas de limite, soit sa limite est $+oo$ ou $-oo$.
]

#exemples[
Conjecturer la divergence des suites suivantes :

1. $(u_n)_(n in NN)$ définie par $u_n = n^2 + 1$.
2. $(v_n)_(n in NN)$ définie par $cases(v_(n+1) = (-1)^n v_n, v_0 = 2)$

#if prof [
  1. Calculons quelques termes de cette suite :
  
    $u_0 = 0^2 + 1 = 1$
    
    $u_1 = 1^2 + 1 = 2$
    
    $u_2 = 2^2 + 1 = 5$
    
    $u_10 = 10^2 + 1 = 101$
    
    $u_100 = 100^2 + 1 = 10 space 001$
    
    Plus $n$ devient grand, plus les termes de la suite semblent devenir grands.
    
    On dit que la suite $(u_n)$ diverge vers $+oo$, et on note $lim_(n -> +oo) u_n = +oo$.

  2. Calculons les premiers termes de cette suite :
  
    $v_1 = (-1)^0 v_0 = 2$
    
    $v_2 = (-1)^1 v_1 = -2$
    
    $v_3 = (-1)^2 v_2 = -2$
    
    $v_4 = (-1)^3 v_3 = 2$
    
    Les termes de la suite alternent entre $2$ et $-2$. La suite n'a donc pas de limite.
    
    On dit que la suite $(v_n)$ diverge (sans limite finie ou infinie).
] else [
  #acompleter()
]
]
