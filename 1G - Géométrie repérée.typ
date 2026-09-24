#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Géométrie repérée]

#historique[La géométrie analytique fut révolutionnée par René Descartes (1596-1650) avec l'introduction du système de coordonnées cartésiennes dans son ouvrage "La Géométrie" publié en 1637. Cette approche permit d'unifier l'algèbre et la géométrie en représentant les courbes par des équations.\
Pierre de Fermat (1601-1665) développa parallèlement des idées similaires, établissant les fondements de la géométrie analytique moderne. Ces travaux permirent d'exprimer les propriétés géométriques par des relations algébriques.\
Au XVIIIe siècle, Leonhard Euler (1707-1783) systématisa l'étude des droites et des cercles dans le plan, formalisant les équations cartésiennes et les propriétés des vecteurs directeurs et normaux. Ces développements ouvrirent la voie à la géométrie vectorielle moderne.]

On se place dans un repère orthonormé $(O ; arrow(i) , arrow(j))$ du plan.

= Rappels sur les équations de droites

#rappels[
- Les vecteurs $arrow(u)vec(x , y)$ et $arrow(v)vec(x' , y')$ sont *_colinéaires_* si et seulement si leur *_déterminant_*\

 $det(arrow(u),arrow(v))= mat(delim: "|", x, x'; y, y')=x y' - y x'$ est nul.
- Un *_vecteur directeur_* d'une droite d'équation cartésienne $a x + b y + c = 0$ est $arrow(u)vec(-b , a)$.
]

#remarque[
En conséquence, les droites d'équation $a x + b y + c = 0$ et $a' x + b' y + c' = 0$ sont parallèles si et seulement si $a b' - a' b = 0$.
]

#exemples[
1. Déterminer une équation cartésienne de la droite $d$ passant par le point $A(3 ; 1)$ et de vecteur directeur $arrow(u)vec(-1 , 5)$.
2. Déterminer une équation cartésienne de la droite $d'$ passant par les points $B(5 ; 3)$ et $C(1 ; -3)$.

#if prof [
  1. Soit un point $M(x ; y)$ de la droite $d$.
  
    Les vecteurs $arrow(A M)vec(x - 3 , y - 1)$ et $arrow(u)vec(-1 , 5)$ sont colinéaires, donc $5(x - 3) - (-1)(y - 1) = 0$.
    
    Soit encore : $5x + y - 16 = 0$

  2. $arrow(B C)$ est un vecteur directeur de $d'$.
  
    $arrow(B C)vec(1 - 5 , -3 - 3) = arrow(B C)vec(-4 , -6)$.
    
    Une équation cartésienne de $d'$ est de la forme : $-6x + 4y + c = 0$.
    
    $B(5 ; 3)$ appartient à $d'$, donc $-6 times 5 + 4 times 3 + c = 0$, d'où $c = 18$.
    
    Une équation cartésienne de $d'$ est $-6x + 4y + 18 = 0$, ou plus simplement $3x - 2y - 9 = 0$.
] else [
  #acompleter()
]
]

= Vecteur normal à une droite

#definition[
On appelle *_vecteur normal_* à une droite $d$, un vecteur non nul orthogonal à un vecteur directeur de $d$.
]

#align(center)[#image("images/geometrie_1.png", width: 30%)]

#exemple[
Soit la droite $d$ d'équation cartésienne $2x - 3y - 6 = 0$. Trouver un vecteur normal à $d$.

#if prof [
  Un vecteur directeur de $d$ est $arrow(u)vec(3 , 2)$.
  
  Un vecteur normal $arrow(n)vec(a , b)$ de $d$ est tel que $arrow(u) dot arrow(n) = 0 <==> 3a + 2b = 0$.
  
  $a = -2$ et $b = 3$ conviennent, ainsi le vecteur $arrow(n)vec(-2 , 3)$ est un vecteur normal à $d$.
] else [
  #acompleter()
]
]

#proprietes[
- Une droite de vecteur normal $arrow(n)vec(a , b)$ admet une équation cartésienne de la forme $a x + b y + c = 0$, où $c$ est un réel à déterminer.
- Réciproquement, la droite d'équation cartésienne $a x + b y + c = 0$ admet le vecteur $arrow(n)vec(a , b)$ pour vecteur normal.
]

#demonstrations[
#if prof [
  - Soit $A(x_a ; y_a)$ un point de la droite $d$ et $arrow(n)vec(a , b)$ un vecteur normal à $d$.
  
    $M(x ; y)$ est un point de $d$ si et seulement si $arrow(A M)vec(x - x_a , y - y_a)$ et $arrow(n)$ sont orthogonaux, c'est-à-dire :
    
    $arrow(A M) dot arrow(n) = 0 <==> a(x - x_a) + b(y - y_a) = 0$
    
    $<==> a x + b y - a x_a - b y_a = 0$
    
    $<==> a x + b y + c = 0$ avec $c = -a x_a - b y_a$

  - Si $a x + b y + c = 0$ est une équation cartésienne d'une droite $d$, alors $arrow(u)vec(-b , a)$ est un vecteur directeur de $d$.
  
    Le vecteur $arrow(n)vec(a , b)$ vérifie $-b times a + a times b = 0$, donc les vecteurs $arrow(u)$ et $arrow(n)$ sont orthogonaux.
    
    $arrow(n)vec(a , b)$ est donc bien un vecteur normal à $d$.
] else [
  #acompleter()
]
]

#exemples[
1. On considère la droite $d$ passant par le point $A(-5 ; 4)$ et dont un vecteur normal est le vecteur $arrow(n)vec(3 , -1)$. Déterminer une équation cartésienne de la droite $d$.

2. Soit la droite $d'$ d'équation $x + 3y - 4 = 0$ et le point $A(2 ; 4)$. Déterminer les coordonnées du point $H$, projeté orthogonal de $A$ sur la droite $d'$.

#if prof [
  1. Comme $arrow(n)vec(3 , -1)$ est un vecteur normal de $d$, une équation cartésienne de $d$ est de la forme :
  
    $3x - y + c = 0$.
    
    Le point $A(-5 ; 4)$ appartient à la droite $d$, donc $3 times (-5) - 4 + c = 0$, et donc $c = 19$.
    
    Une équation cartésienne de $d$ est $3x - y + 19 = 0$.

  2. On commence par déterminer une équation de la droite $(A H)$ :
  
    Comme $d'$ et $(A H)$ sont perpendiculaires, un vecteur directeur de $d'$ est un vecteur normal de $(A H)$.
    
    Une équation cartésienne de $d'$ est $x + 3y - 4 = 0$, donc le vecteur $arrow(u)vec(-3 , 1)$ est un vecteur directeur de $d'$.
    
    Et donc, $arrow(u)$ est un vecteur normal de $(A H)$, dont une équation cartésienne est de la forme : $-3x + y + c = 0$.
    
    Or le point $A(2 ; 4)$ appartient à $(A H)$, donc $-3 times 2 + 4 + c = 0$, soit $c = 2$.
    
    Une équation de $(A H)$ est donc $-3x + y + 2 = 0$.
    
    $H$ est le point d'intersection de $d'$ et $(A H)$, donc ses coordonnées $(x ; y)$ vérifient les équations des deux droites. Résolvons alors le système :
    
    $cases(
      x + 3y - 4 = 0,
      -3x + y + 2 = 0
    ) <==> cases(
      x = -3y + 4,
      -3(-3y + 4) + y + 2 = 0
    )$
    
    $<==> cases(
      x = -3y + 4,
      10y - 10 = 0
    ) <==> cases(
      x = -3y + 4,
      y = 1
    ) <==> cases(
      x = 1,
      y = 1
    )$
    
    Finalement, le point $H$, projeté orthogonal de $A$ sur la droite $d'$, a pour coordonnées $(1 ; 1)$.
    
    #align(center)[#image("images/geometrie_2.png", width: 40%)]
] else [
  #acompleter()
]
]

= Équations de cercles

#propriete[
Une *_équation du cercle_* de centre $A(x_a ; y_a)$ et de rayon $r$ est :

$ (x - x_a)^2 + (y - y_a)^2 = r^2 $
]

#demonstration[
#if prof [
  Soit un point $M$ du cercle de centre $A(x_a ; y_a)$ et de rayon $r$.
  
  On a donc $A M = r <==> A M^2 = r^2$.
  
  Or $A M = sqrt((x - x_a)^2 + (y - y_a)^2)$ et donc $A M^2 = (x - x_a)^2 + (y - y_a)^2$.
  
  D'où $(x - x_a)^2 + (y - y_a)^2 = r^2$.
] else [
  #acompleter()
]
]

#exemples[

1. On considère le cercle $cal(C)$ de centre $A(4 ; -1)$ et passant par le point $B(3 ; 5)$. Déterminer une équation du cercle $cal(C)$.

2. On considère l'ensemble $E$ d'équation $x^2 + y^2 - 2x - 10y + 17 = 0$. Démontrer que l'ensemble $E$ est un cercle dont on déterminera les caractéristiques (centre, rayon).

#if prof [
  1. Commençons par déterminer le carré du rayon du cercle $cal(C)$ :
  
    $r^2 = A B^2 = (3 - 4)^2 + (5 - (-1))^2 = 1 + 36 = 37$.
    
    Une équation du cercle $cal(C)$ est alors : $(x - 4)^2 + (y + 1)^2 = 37$.

  2. En partant de l'équation donnée dans l'énoncé :
  
    $x^2 + y^2 - 2x - 10y + 17 = 0$
    
    $<==> (x^2 - 2x) + (y^2 - 10y) + 17 = 0$
    
    $<==> (x - 1)^2 - 1 + (y - 5)^2 - 25 + 17 = 0$
    
    $<==> (x - 1)^2 + (y - 5)^2 = 9$
    
    $<==> (x - 1)^2 + (y - 5)^2 = 3^2$
    
    L'ensemble $E$ est donc le cercle dont le centre a pour coordonnées $(1 ; 5)$ et de rayon $3$.
] else [
  #acompleter()
]
]
