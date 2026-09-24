#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = false

#titre[Produit scalaire - 1/2]

#historique[
  La notion de produit scalaire est apparue pour les besoins de la physique. Le concept est relativement récent et a été introduit au milieu du XIX#super[e] siècle par le mathématicien allemand Hermann Grassmann (1809 - 1877).

  Il fut baptisé produit scalaire par William Hamilton (1805 - 1865) en 1853.

  Ces développements s'inscrivent dans le cadre plus large de l'algèbre vectorielle moderne, qui révolutionna la physique mathématique en permettant une description plus élégante des phénomènes mécaniques et électromagnétiques. Le produit scalaire devint rapidement un outil fondamental en géométrie analytique et en physique théorique.
]

= Définitions et propriétés

#rappel[
  Soit un vecteur $arrow(u)$ et deux points $A$ et $B$ tels que $arrow(u) = arrow(A B)$.

  La _norme_ du vecteur $arrow(u)$, notée $||arrow(u)||$, est la distance $A B$.
]

== Définition du produit scalaire

#definition[
  Soit $arrow(u)$ et $arrow(v)$ deux vecteurs du plan.

  On appelle _produit scalaire_ de $arrow(u)$ par $arrow(v)$, noté $arrow(u) dot arrow(v)$, le nombre réel défini par :
  
  - $arrow(u) dot arrow(v) = 0$, si l'un des deux vecteurs $arrow(u)$ et $arrow(v)$ est nul.
  - $arrow(u) dot arrow(v) = ||arrow(u)|| times ||arrow(v)|| times cos(hat(arrow(u)","arrow(v)))$ dans le cas contraire.
]

#align(center)[
  #image("images/produit_scalaire_1.png", width: 0%)
]

#remarques[
  - $arrow(u) dot arrow(v)$ se lit « $arrow(u)$ scalaire $arrow(v)$ ».
  - #emoji.warning Le produit scalaire de deux vecteurs est un nombre réel. Écrire par exemple $arrow(u) dot arrow(v) = arrow(0)$ est une maladresse à éviter.
]

#exemple[
  Soit un triangle équilatéral $A B C$ de côté $a$.

  Calculer en fonction de $a$ le produit scalaire $arrow(A B) dot arrow(A C)$.

  #align(center)[
    #image("images/produit_scalaire_2.png", width: 20%)
  ]

  #if prof [
    $
    arrow(A B) dot arrow(A C) &= ||arrow(A B)|| times ||arrow(A C)|| times cos(hat(arrow(A B)","arrow(A C))) \
    &= a times a times cos(60°) \
    &= a^2 times 0,5 \
    &= (a^2)/2
    $
  ] else [
    #acompleter()
  ]
]

== Symétrie du produit scalaire

#propriete[
  Pour tous vecteurs $arrow(u)$ et $arrow(v)$, on a $arrow(u) dot arrow(v) = arrow(v) dot arrow(u)$
]

#demonstration[
  On suppose que $arrow(u)$ et $arrow(v)$ sont non nuls (démonstration évidente dans le cas contraire).

  #if prof [
    $
    arrow(u) dot arrow(v) &= ||arrow(u)|| times ||arrow(v)|| times cos(hat(arrow(u)","arrow(v))) \
    &= ||arrow(v)|| times ||arrow(u)|| times cos(hat(arrow(v)","arrow(u))) \
    &= arrow(v) dot arrow(u)
    $
  ] else [
    #acompleter()
  ]
]

== Bilinéarité du produit scalaire

#proprietes(titre:"(admises)")[
  Pour tous vecteurs $arrow(u)$, $arrow(v)$ et $arrow(w)$, on a :

  - $arrow(u) dot (arrow(v) + arrow(w)) = arrow(u) dot arrow(v) + arrow(u) dot arrow(w)$
  - $arrow(u) dot (k arrow(v)) = k arrow(u) dot arrow(v)$ avec $k$ un nombre réel.
]

== Vecteurs colinéaires et carré scalaire

#proprietes[
  Soit deux vecteurs $arrow(u)$ et $arrow(v)$ non nuls et colinéaires.

  - Si $arrow(u)$ et $arrow(v)$ ont le même sens alors $arrow(u) dot arrow(v) = ||arrow(u)|| times ||arrow(v)||$.

    En particulier on a $arrow(u) dot arrow(u) = arrow(u)^2 = ||arrow(u)||^2$. On appelle cette valeur _carré scalaire_ de $arrow(u)$ noté $arrow(u)^2$.
  - Si $arrow(u)$ et $arrow(v)$ sont de sens contraires alors $arrow(u) dot arrow(v) = -||arrow(u)|| times ||arrow(v)||$.
]

#demonstrations[
  Il suffit de remarquer que dans le cas de vecteurs colinéaires de même sens,\
  $cos(0) = 1$, et s'ils sont de sens contraires, $cos(pi) = -1$.
]

== Identités remarquables

#proprietes[
  Pour tous vecteurs $arrow(u)$ et $arrow(v)$, on a :
  - $(arrow(u) + arrow(v))^2 = arrow(u)^2 + 2 arrow(u) dot arrow(v) + arrow(v)^2$
  - $(arrow(u) - arrow(v))^2 = arrow(u)^2 - 2 arrow(u) dot arrow(v) + arrow(v)^2$
  - $(arrow(u) + arrow(v))(arrow(u) - arrow(v)) = arrow(u)^2 - arrow(v)^2$
]

#demonstrations[
  #if prof [
    Il suffit de développer et d'utiliser la propriété de symétrie.
  ] else [
    #acompleter()
  ]
]

= Norme et produit scalaire

== Propriétés

#propriete[
  Soit $arrow(u)$ et $arrow(v)$ deux vecteurs. On a :

  - $arrow(u) dot arrow(v) = 1/2 (||arrow(u)||^2 + ||arrow(v)||^2 - ||arrow(u) - arrow(v)||^2)$
  - $arrow(u) dot arrow(v) = 1/2 (||arrow(u) + arrow(v)||^2 - ||arrow(u)||^2 - ||arrow(v)||^2)$
]

#demonstration[
  (de la première formule)

  #if prof [
    $
    ||arrow(u) - arrow(v)||^2 &= (arrow(u) - arrow(v))^2 \
    &= arrow(u)^2 - 2 arrow(u) dot arrow(v) + arrow(v)^2 \
    &= ||arrow(u)||^2 - 2 arrow(u) dot arrow(v) + ||arrow(v)||^2
    $

    D'où $arrow(u) dot arrow(v) = 1/2 (||arrow(u)||^2 + ||arrow(v)||^2 - ||arrow(u) - arrow(v)||^2)$
  ] else [
    #acompleter()
  ]
]

#propriete[
  Soit $A$, $B$, et $C$ trois points du plan. On a :

  $arrow(A B) dot arrow(A C) = 1/2 (A B^2 + A C^2 - B C^2)$
]

#demonstration[
  #if prof [
    $
    arrow(A B) dot arrow(A C) &= 1/2 (||arrow(A B)||^2 + ||arrow(A C)||^2 - ||arrow(A B) - arrow(A C)||^2) \
    &= 1/2 (A B^2 + A C^2 - ||arrow(C B)||^2) \
    &= 1/2 (A B^2 + A C^2 - B C^2)
    $
  ] else [
    #acompleter()
  ]
]

#exemple[
  On considère la figure ci-dessous. Calculer le produit scalaire $arrow(C G) dot arrow(C F)$.

  #align(center)[
    #image("images/produit_scalaire_3.png", width: 20%)
  ]

  #if prof [
    $
    arrow(C G) dot arrow(C F) &= 1/2 (C G^2 + C F^2 - G F^2) \
    &= 1/2 (6^2 + 7^2 - 3^2) \
    &= 38
    $
  ] else [
    #acompleter()
  ]
]

== Théorème d'Al Kashi

#historique[
  À Samarkand, le savant perse Jemshid ibn Massoud al Kashi (1380 - 1430) vit sous la protection du prince Ulugh-Beg (1394 - 1449) qui a fondé une Université comprenant une soixantaine de scientifiques qui étudient la théologie et les sciences.

  Dans son Traité sur le cercle (1424), al Kashi calcule le rapport de la circonférence à son rayon pour obtenir une valeur approchée de $2pi$ avec une précision jamais atteinte. Il obtient 9 positions exactes en base 60 soit 16 décimales exactes : $2pi approx 6,283space 185space 307space 179space 586space 5$.

  Ce théorème, parfois appelé « loi des cosinus » en Occident, généralise le théorème de Pythagore aux triangles quelconques et constitue un outil fondamental de la géométrie euclidienne.
]

#theoreme(titre:"Théorème d'Al Kashi")[

  Dans un triangle $A B C$, on a, avec les notations de la figure :

  #align(center)[
    $a^2 = b^2 + c^2 - 2 b c cos hat(A)$

    #image("images/produit_scalaire_4.png", width: 25%)
  ]
]

#demonstration[
  #if prof [
    $arrow(A B) dot arrow(A C) = A B times A C times cos hat(A) = b c cos hat(A)$

    et  $arrow(A B) dot arrow(A C) = 1/2 (A B^2 + A C^2 - B C^2) = 1/2 (b^2 + c^2 - a^2)$

    Donc, $1/2 (b^2 + c^2 - a^2) = b c cos hat(A)$

    C'est-à-dire $b^2 + c^2 - a^2 = 2 b c cos hat(A)"    ou encore    "a^2 = b^2 + c^2 - 2 b c cos hat(A)$
  ] else [
    #acompleter()
  ]
]

#exemple[
  On considère la figure ci-dessous. Calculer la mesure de l'angle $hat(B A C)$ au degré près.

  #align(center)[
    #image("images/produit_scalaire_5.png", width: 25%)
  ]

  #if prof [
    D'après le théorème d'Al Kashi, on a :
    $
    C B^2 &= A B^2 + A C^2 - 2 times A B times A C times cos(hat(B A C)) \
    4^2 &= 6^2 + 5^2 - 2 times 6 times 5 times cos(hat(B A C)) \
    16 &= 36 + 25 - 60 cos(hat(B A C)) \
    60 cos(hat(B A C)) &= 36 + 25 - 16 \
    60 cos(hat(B A C)) &= 45 \
    cos(hat(B A C)) &= 45/60 \
    cos(hat(B A C)) &= 3/4 \
    hat(B A C) &approx 41°
    $
  ] else [
    #acompleter()
  ]
]
