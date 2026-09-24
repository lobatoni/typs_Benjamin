#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = true

#titre[Produit scalaire - 2/2]

#historique[
  L'application du produit scalaire à l'orthogonalité et aux coordonnées marqua une étape décisive dans l'unification de la géométrie et de l'algèbre. Cette synthèse fut principalement réalisée par René Descartes (1596-1650) dans son ouvrage "La Géométrie" (1637), où il introduisit le système de coordonnées cartésiennes qui porte son nom.

  Les travaux de Pierre-Simon Laplace (1749-1827) et de Joseph-Louis Lagrange (1736-1813) au XVIIIe siècle développèrent les applications du produit scalaire en mécanique céleste et en physique mathématique. Leurs méthodes analytiques révolutionnèrent l'étude des systèmes dynamiques et établirent les fondements mathématiques de la mécanique moderne.

  Au XIXe siècle, Hermann Grassmann (1809-1877) généralisa ces concepts dans son "Ausdehnungslehre" (1844), créant une algèbre vectorielle complète qui unifia définitivement les approches géométriques et algébriques. Ces développements ouvrirent la voie aux applications modernes en physique théorique et en ingénierie.
]

= Produit scalaire et orthogonalité

== Vecteurs orthogonaux

#propriete[
  Deux vecteurs $arrow(u)$ et $arrow(v)$ sont orthogonaux si et seulement si $arrow(u) dot arrow(v) = 0$
]

#demonstration[
  #if prof [
    Si l'un des vecteurs est nul, la démonstration est évidente (on rappelle que le vecteur nul $arrow(0)$ est orthogonal à tout vecteur).

    Dans le cas contraire :
    $
    arrow(u) dot arrow(v) = 0 &<==> ||arrow(u)|| times ||arrow(v)|| times cos(hat(arrow(u)";"arrow(v))) = 0\
    &<==> cos(hat(arrow(u)";"arrow(v))) = 0\
    &<==> "Les vecteurs" arrow(u) "et" arrow(v) "sont orthogonaux."
    $
  ] else [
    #acompleter()
  ]
]

== Projection orthogonale

#definition[
  Soit une droite $d$ et un point $M$ du plan.

  Le *_projeté orthogonal_* du point $M$ sur la droite $d$ est le point d'intersection $H$ de la droite $d$ avec la perpendiculaire à $d$ passant par $M$.
]

#align(center)[
  #image("images/produit_scalaire_6.png", width: 28%)
]

#propriete[
  Soit $arrow(u)$ et $arrow(v)$ deux vecteurs non nuls du plan tels que $arrow(u) = arrow(O A)$ et $arrow(v) = arrow(O B)$.

  Soit $H$ le projeté orthogonal du point $B$ sur la droite $(O A)$.

  On a : $ arrow(u) dot arrow(v) = arrow(O A) dot arrow(O B) = arrow(O A) dot arrow(O H) $
]

#align(center)[
  #image("images/produit_scalaire_7.png", width: 40%)
]

#demonstration[
  #if prof [
    $
    arrow(O A) dot arrow(O B) &= arrow(O A) dot (arrow(O H) + arrow(H B))\
    &= arrow(O A) dot arrow(O H) + arrow(O A) dot arrow(H B)\
    &= arrow(O A) dot arrow(O H) quad "car" arrow(O A) "et" arrow(H B) "sont orthogonaux donc" arrow(O A) dot arrow(H B) = 0
    $
  ] else [
    #acompleter()
  ]
]

#remarques[
  - Si $arrow(O A)$ et $arrow(O H)$ ont le même sens, $arrow(O A) dot arrow(O H) = O A times O H$
  - Si $arrow(O A)$ et $arrow(O H)$ ont un sens contraire, $arrow(O A) dot arrow(O H) = -O A times O H$
]

#exemple[
  Soit un carré $A B C D$ de côté $c$.

  Calculer, en fonction de $c$, les produits scalaires suivants

  1. $arrow(A B) dot arrow(A C)$
  2. $arrow(A B) dot arrow(A D)$
  3. $arrow(A D) dot arrow(C B)$

  #if prof [
    1. Par projection, on a $arrow(A B) dot arrow(A C) = arrow(A B) dot arrow(A B) = ||arrow(A B)||^2 = c^2$
    2. $arrow(A B) dot arrow(A D) = 0$ car les vecteurs $arrow(A B)$ et $arrow(A D)$ sont orthogonaux.
    3. $arrow(A D) dot arrow(C B) = arrow(A D) dot arrow(D A) = -||arrow(A D)||^2 = -c^2$
  ] else [
    #acompleter()
  ]
]

== Cercle et triangle rectangle

#propriete[
  L'ensemble des points $M$ vérifiant l'égalité $arrow(M A) dot arrow(M B) = 0$ est le cercle de diamètre $[A B]$.
]

#align(center)[
  #image("images/produit_scalaire_8.png", width: 40%)
]

#demonstration[
  #if prof [
    Soit $O$ le milieu du segment $[A B]$.

    $arrow(M A) dot arrow(M B) = 0 <==> (arrow(M O) + arrow(O A)) dot (arrow(M O) + arrow(O B)) = 0$

    Comme $O$ est le milieu de $[A B]$, $arrow(O B) = -arrow(O A)$

    D'où
    $
    (arrow(M O) + arrow(O A)) dot (arrow(M O) + arrow(O B)) = 0 &<==> (arrow(M O) + arrow(O A)) dot (arrow(M O) - arrow(O A)) = 0\
    &<==> arrow(M O)^2 - arrow(O A)^2 = 0 quad "car" (arrow(u) + arrow(v)) dot (arrow(u) - arrow(v)) = arrow(u)^2 - arrow(v)^2\
    &<==> M O^2 - O A^2 = 0\
    &<==> M O^2 = O A^2\
    &<==> M O = O A
    $

    $M$ appartient donc au cercle de centre $O$ et de rayon $O A$, c'est-à-dire le cercle de diamètre $[A B]$.
  ] else [
    #acompleter()
  ]
]

#propriete[
  Un point $M$ distinct de $A$ et de $B$, appartient au cercle de diamètre $[A B]$ si et seulement si le triangle $A B M$ est rectangle en $M$.
]

#align(center)[
  #image("images/produit_scalaire_9.png", width: 33%)
]

#demonstration[
  $arrow(M A) dot arrow(M B) = 0$ si et seulement si les vecteurs $arrow(M A)$ et $arrow(M B)$ sont orthogonaux.
]

= Produit scalaire dans un repère orthonormé

Le plan est muni d'un repère orthonormé $(O ; arrow(i), arrow(j))$.

#propriete[
  Soit $arrow(u)$ et $arrow(v)$ deux vecteurs de coordonnées respectives $vec(x, y)$ et $vec(x', y')$.

  On a $ arrow(u) dot arrow(v) = x x' + y y' $
]

#demonstration[
  #if prof [
    $
    arrow(u) dot arrow(v) &= (x arrow(i) + y arrow(j)) dot (x' arrow(i) + y' arrow(j))\
    &= x x' arrow(i) dot arrow(i) + x y' arrow(i) dot arrow(j) + y x' arrow(j) dot arrow(i) + y y' arrow(j) dot arrow(j)\
    &= x x' ||arrow(i)||^2 + x y' arrow(i) dot arrow(j) + y x' arrow(j) dot arrow(i) + y y' ||arrow(j)||^2\
    &= x x' + y y'
    $

    Car $||arrow(i)|| = ||arrow(j)|| = 1$, le repère étant normé,
    et $arrow(i) dot arrow(j) = arrow(j) dot arrow(i) = 0$, le repère étant orthogonal.
  ] else [
    #acompleter()
  ]
]

#exemples[
  1. Soit $arrow(u) vec(5, -4)$ et $arrow(v) vec(-3, 7)$ deux vecteurs. Calculer $arrow(u) dot arrow(v)$.

  2. Calculer la mesure de l'angle $hat((arrow(A B)";"arrow(C D)))$ en lisant les coordonnées des points $A$, $B$, $C$, et $D$ dans le repère ci-dessous.

  #align(center)[
    #image("images/produit_scalaire_10.png", width: 33%)
  ]

  #if prof [
    1. $arrow(u) dot arrow(v) = 5 times (-3) + (-4) times 7 = -15 - 28 = -43$

    2. On va calculer $arrow(A B) dot arrow(C D)$ de deux manières différentes. D'une part avec la formule générale :
    
    $
    arrow(A B) dot arrow(C D) &= ||arrow(A B)|| times ||arrow(C D)|| times cos(hat(arrow(A B)";"arrow(C D)))\
    &= sqrt((4-(-1))^2+(2-1)^2) times sqrt((4-2)^2+(3-(-1))^2) times cos(hat(arrow(A B)";"arrow(C D)))\
    &= sqrt(26) times sqrt(20) times cos(hat(arrow(A B)";"arrow(C D)))\
    &= 2sqrt(130) times cos(hat(arrow(A B)";"arrow(C D)))
    $

    Et d'autre part en utilisant le fait que le repère soit orthonormé :
    $arrow(A B) dot arrow(C D) = 5 times (-2) + (-1) times (-4) = -6$

    Ainsi, $2sqrt(130) times cos(hat(arrow(A B)";"arrow(C D))) = -6$

    Et donc $cos(hat(arrow(A B)";"arrow(C D))) = -6/(2sqrt(130)) = -3/sqrt(130)$

    D'où $hat(arrow(A B)";"arrow(C D)) approx 105,3°$
  ] else [
    #acompleter()
  ]
]
