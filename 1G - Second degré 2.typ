#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Second degré - 2/2]

#historique[Les méthodes de résolution des équations du second degré ont été développées progressivement à travers l'histoire. Les Babyloniens résolvaient déjà certains cas particuliers vers 2000 av. J.-C., mais c'est le mathématicien indien Brahmagupta (VIIe siècle) qui formula les premières règles générales. Au IXe siècle, Al-Khawarizmi systématisa ces méthodes dans son traité d'algèbre.\
La notion de discriminant fut introduite par les mathématiciens européens de la Renaissance, notamment par François Viète (1540-1603) qui établit les relations entre coefficients et racines qui portent son nom.\
La formalisation moderne, avec l'étude systématique des signes et des inéquations du second degré, fut achevée aux XVIIe et XVIIIe siècles par les travaux de mathématiciens comme René Descartes et Leonhard Euler.]

= Résolution d'une équation du second degré

#definition[
Soit une *_équation du second degré_* de la forme $a x^2 + b x + c = 0$ où $a, b, c$ sont des réels et $a != 0$.

Une solution de cette équation s'appelle une *_racine_* du trinôme $a x^2 + b x + c$.
]

#exemple[
$3x^2 - 5x - 2 = 0$ est une équation du second degré.

2 est une racine de cette équation, car $3 times 2^2 - 5 times 2 - 2 = 0$.
]

#definition[
On appelle *_discriminant_* du trinôme $a x^2 + b x + c$ le nombre réel, noté $Delta$, égal à $b^2 - 4a c$.
]

#proprietes[
Soit $Delta$ le discriminant du trinôme $a x^2 + b x + c$.

- Si $Delta > 0$, alors l'équation a deux solutions distinctes $x_1 = (-b - sqrt(Delta))/(2a)$ et $x_2 = (-b + sqrt(Delta))/(2a)$.
  
  On dit aussi que le trinôme admet deux racines réelles.

- Si $Delta = 0$, alors l'équation a une unique solution : $x_0 = -b/(2a)$.
  
  On dit aussi que le trinôme admet une racine double.

- Si $Delta < 0$, alors l'équation n'a pas de solution.
  
  On dit aussi que le trinôme n'a pas de racine réelle.
]

#exemples[
Résoudre les équations suivantes sur $RR$ :

1. $x^2 + 3x - 10 = 0$
2. $3x^2 + 2x + 2 = 0$
3. $18x^2 - 12x + 2 = 0$

#if prof [
  1. Le discriminant de $x^2 + 3x - 10$ est $Delta = 3^2 - 4 times 1 times (-10) = 49$.
     
     $Delta > 0$, donc l'équation a deux solutions : $x_1 = (-3 - sqrt(49))/(2 times 1) = (-10)/2 = -5$ et $x_2 = (-3 + sqrt(49))/(2 times 1) = 4/2 = 2$.
  
  2. Le discriminant de $3x^2 + 2x + 2$ est $Delta = 2^2 - 4 times 3 times 2 = -20$.
     
     $Delta < 0$, donc l'équation n'a pas de solution.
  
  3. Le discriminant de $18x^2 - 12x + 2$ est $Delta = (-12)^2 - 4 times 18 times 2 = 0$.
     
     $Delta = 0$, donc l'équation a une solution : $x_0 = -(-12)/(2 times 18) = 12/36 = 2/3$.
] else [
  #acompleter()
]
]

#demonstration[
#if prof [
  On sait que $f$ peut s'écrire sous sa forme canonique : $f(x) = a(x - alpha)^2 + beta$ avec $alpha = -b/(2a)$ et $beta = -(b^2 - 4a c)/(4a)$.
  
  D'où :
  $ a x^2 + b x + c = 0 &<==> a(x + b/(2a))^2 - (b^2 - 4a c)/(4a) = 0\
  &<==> a(x + b/(2a))^2 - Delta/(4a) = 0\
  &<==> a(x + b/(2a))^2 = Delta/(4a)\
  &<==> (x + b/(2a))^2 = Delta/(4a^2) " car " a != 0 $
  
  - Si $Delta < 0$ : Comme un carré ne peut pas être négatif, l'équation n'a pas de solution.
  
  - Si $Delta = 0$ : $(x + b/(2a))^2 = 0$. L'équation n'a donc qu'une solution $x_0 = -b/(2a)$.
  
  - Si $Delta > 0$ :
  $ (x + b/(2a))^2 = Delta/(4a^2) &<==> (x + b/(2a))^2 - Delta/(4a^2) = 0\
  &<==> (x + b/(2a))^2 - (sqrt(Delta)/(2a))^2 = 0\
  &<==> (x + b/(2a) - sqrt(Delta)/(2a))(x + b/(2a) + sqrt(Delta)/(2a)) = 0 " (identité remarquable)"\
  &<==> (x + (b - sqrt(Delta))/(2a))(x + (b + sqrt(Delta))/(2a)) = 0 $
  
  L'équation a donc deux solutions $x_1 = (-b + sqrt(Delta))/(2a)$ et $x_2 = (-b - sqrt(Delta))/(2a)$
] else [
  #acompleter()
]
]

= Factorisation d'un trinôme

#proprietes[
Soit $f$ une fonction polynôme de degré 2 de la forme $f(x) = a x^2 + b x + c$.

- Si $Delta > 0$, alors $f(x) = a(x - x_1)(x - x_2)$ où $x_1 = (-b - sqrt(Delta))/(2a)$ et $x_2 = (-b + sqrt(Delta))/(2a)$.

- Si $Delta = 0$, alors $f(x) = a(x - x_0)^2$ où $x_0 = -b/(2a)$.

- Si $Delta < 0$, alors $f(x)$ n'est pas factorisable.
]

#exemples[
Factoriser si possible les expressions suivantes :

1. $3x^2 - x - 4$
2. $3x^2 - 7/2 x + 49/48$
3. $2x^2 + 4x + 3$

#if prof [
  1. $Delta = (-1)^2 - 4 times 3 times (-4) = 49$, donc $3x^2 - x - 4 = 3(x - x_1)(x - x_2)$
     avec $x_1 = (1 - 7)/6 = -1$ et $x_2 = (1 + 7)/6 = 4/3$.
  
  2. $Delta = (-7/2)^2 - 4 times 3 times 49/48 = 0$, donc $3x^2 - 7/2 x + 49/48 = 3(x - x_0)^2$
     avec $x_0 = (7/2)/(2 times 3) = 7/12$
  
  3. $Delta = 4^2 - 4 times 2 times 3 = -8 < 0$, donc l'expression n'est pas factorisable.
] else [
  #acompleter()
]
]

= Somme et produit des racines

#proprietes[
Soit un polynôme ayant 2 racines réelles distinctes $x_1$ et $x_2$ (donc $Delta > 0$).

- $x_1 + x_2 = -b/a$
- $x_1 times x_2 = c/a$
]

#demonstration[
#if prof [
  Soit un polynôme $a x^2 + b x + c$ ayant 2 racines réelles distinctes $x_1$ et $x_2$\
  (donc $Delta > 0$), alors :
  
  $ a x^2 + b x + c &= a(x - x_1)(x - x_2)\
  &= a(x^2 - x x_2 - x x_1 + x_1 x_2)\
  &= a x^2 - a(x_1 + x_2) x + a x_1 x_2 $
  
  On identifie avec $a x^2 + b x + c$. Ainsi : 
  $ cases(b = -a(x_1 + x_2), c = a x_1 x_2) <==> cases(x_1 + x_2 = -b/a, x_1 times x_2 = c/a) $
] else [
  #acompleter()
]
]

#remarque[
On écrit parfois $a(x^2 - S x + P)$ où $S$ est la somme des racines et $P$ leur produit.
]

#exemple[
Déterminer deux nombres dont la somme vaut 3 et le produit vaut -10.

#if prof [
  Ces nombres sont racines de l'équation $x^2 - 3x - 10 = 0$.
  
  En résolvant l'équation, on trouve $x_1 = -2$ et $x_2 = 5$.
] else [
  #acompleter()
]
]

= Signe du trinôme

#proprietes[
Soit $f(x) = a x^2 + b x + c$ une fonction polynôme de degré 2.

- Si $Delta < 0$ alors le trinôme est du signe de $a$ sur $RR$ (et ne s'annule pas).

- Si $Delta = 0$ alors le trinôme est du signe de $a$ sur $RR$ (et s'annule en son unique racine $x_0$).

- Si $Delta > 0$ alors le trinôme est :
  - du signe de $a$ pour $x in ]-oo ; x_1] union [x_2 ; +oo[$
  - du signe de $-a$ pour $x in [x_1 ; x_2]$.
  
  (où $x_1$ et $x_2$ sont les racines du trinôme avec $x_1 < x_2$).
]

#regle[
On retient parfois que « $f(x)$ est du signe de $a$ en dehors des racines. »
]

- Si $Delta > 0$ alors (avec $x_1 < x_2$) :

#align(center)[
  #tabvar(
    variable: $x$,
    label: (([Signe\ de $a x^2 + b x + c$], "Sign"),),
    domain: ($-oo$, $x_1$, $x_2$, $+oo$),
    contents: (
      (("signe de " + $a$), ("0", "signe de " + $-a$), ("0", "signe de " + $a$)),
    )
  )
]

- Si $Delta <= 0$ alors l'expression $a x^2 + b x + c$ est du signe de $a$.

#align(center)[#image("images/para_sgn.png", width: 65%)]

#exemples[
1. Résoudre dans $RR$ l'inéquation $3x^2 + 5x - 2 >= 0$.
2. Résoudre dans $RR$ l'inéquation $-x^2 + x - 7 > 0$.

#if prof [
  1. On commence par trouver les racines du trinôme $3x^2 + 5x - 2$ : $x_1 = -2$ et $x_2 = 1/3$.
     
     Ce trinôme est donc négatif pour $x in [-2 ; 1/3]$ et positif ailleurs :
     
     #align(center)[
       #tabvar(
         variable: $x$,
         label: (([Signe\ de $3x^2 + 5x - 2$], "Sign"),),
         domain: ($-oo$, $-2$, $1/3$, $+oo$),
         contents: (
           (($+$), ("0", $-$), ("0", $+$)),
         )
       )
     ]
     
     On en déduit que $3x^2 + 5x - 2 >= 0 <==> x in ]-oo ; -2] union [1/3 ; +oo[$.
  
  2. Le trinôme $-x^2 + x - 7$ n'a pas de racine ($Delta < 0$). Il est donc toujours du signe du coefficient devant $x^2$, c'est-à-dire négatif.
     
     L'inéquation $-x^2 + x - 7 > 0$ n'a donc pas de solution.
] else [
  #acompleter()
]
]

= Application : position relative de deux courbes

Soit $f$ et $g$ deux fonctions définies sur $RR$ par :
- $f(x) = -x^2 + 8x - 11$
- $g(x) = x - 1$

Étudier la position relative des courbes représentatives $cal(C)_f$ et $cal(C)_g$.

On va étudier le signe de la différence $f(x) - g(x)$ :

#if prof [
  $f(x) - g(x) = -x^2 + 8x - 11 - x + 1 = -x^2 + 7x - 10$
  
  On trouve comme racines $x_1 = 2$ et $x_2 = 5$.
  
  $f(x) - g(x)$ est donc positif entre 2 et 5, et négatif sinon :
  
  #align(center)[
    #tabvar(
      variable: $x$,
      label: (([Signe\ de $f(x) - g(x)$], "Sign"),),
      domain: ($-oo$, $2$, $5$, $+oo$),
      contents: (
        (($-$), ("0", $+$), ("0", $-$)),
      )
    )
  ]
  
  Autrement dit :
  
  La courbe $cal(C)_f$ est en-dessous de la courbe $cal(C)_g$ pour $x in ]-oo ; 2[ union ]5 ; +oo[$.
  
  Elle est au-dessus pour $x in ]2 ; 5[$.
] else [
  #acompleter()
]

Vérification graphique à l'aide de la calculatrice ou d'un logiciel :

#align(center)[#image("images/second_degré_1.png", width: 50%)]
