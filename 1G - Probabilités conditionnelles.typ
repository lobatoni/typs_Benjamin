#import "@local/configbenji:1.0.0": *
#show: apply-template
#let prof = false

#titre[Probabilités conditionnelles]

#historique[L'étude des probabilités conditionnelles trouve ses origines dans les travaux de Thomas Bayes (1702-1761), mathématicien anglais qui développa le théorème qui porte son nom. Ce théorème, publié de manière posthume en 1763, révolutionna l'approche probabiliste en permettant de réviser les probabilités à la lumière de nouvelles informations.\
Au XIXe siècle, Pierre-Simon Laplace (1749-1827) approfondit ces concepts et développa la théorie moderne des probabilités conditionnelles, établissant les bases mathématiques rigoureuses encore utilisées aujourd'hui.]

#rappels[
Pour tous événements $A$ et $B$ d'un univers de probabilité $Omega$ :

- $P(A union B) = P(A) + P(B) - P(A inter B)$ (Formule de Grassmann)
- $P(overline(A)) = 1 - P(A)$
- Si équiprobabilité, $P(A) = ("Nombre d'éléments de " A)/("Nombre d'éléments de " Omega) = ("Nombre de cas favorables")/("Nombre de cas possibles")$
]

= Probabilité de $B$ sachant $A$

#definition[
Soit $A$ et $B$ deux événements avec $P(A) eq.not 0$.

La probabilité de l'événement « $B$ sachant $A$ », notée $P_A (B)$, est définie par :
$
P_A (B) = (P(A inter B))/(P(A))
$
]

#remarques[
- « $B$ sachant $A$ » correspond à « $B$ sachant que $A$ est réalisé ».
- Si $P(B) eq.not 0$ on a de même $P_B (A) = (P(B inter A))/(P(B))$.
- $P_A (A) = 1$
- En situation d'équiprobabilité, $P_A (B) = ("Nombre d'éléments de " A inter B)/("Nombre d'éléments de " A)$.
]

#exemple[
Un SAV remonte les informations suivantes pour un appareil :
- 30 % des retours proviennent d'une panne $A$.
- 40 % des retours proviennent d'une panne $B$.
- 3 % des retours d'une panne simultanée $A$ et $B$.

Calculer la probabilité qu'un appareil choisi au hasard parmi ceux ayant la panne $A$ ait aussi la panne $B$.

#if prof [
  $P_A (B) = (P(A inter B))/(P(A)) = (0,03)/(0,30) = 0,1$
] else [
  #acompleter()
]
]

#proprietes[
Soit $A$ et $B$ deux événements avec $P(A) eq.not 0$ :
- $0 <= P_A (B) <= 1$
- $P_A (overline(B)) = 1 - P_A (B)$
]

= Probabilité de $A inter B$

#propriete[
Soit $A$ et $B$ deux événements avec $P(A) eq.not 0$.

On a alors : $P(A inter B) = P(A) times P_A (B)$
]

#remarques[
- Cela découle de la définition de $P_A (B)$.
- Si $P(B) eq.not 0$ on a aussi $P(A inter B) = P(B) times P_B (A)$.
]

#exemple[
Tous les élèves de Terminale d'un lycée ont passé un test de certification en anglais.
- 80 % ont réussi le test.
- Parmi ceux qui ont réussi, 95 % n'ont jamais redoublé.
- Parmi ceux qui ont échoué, 85 % n'ont jamais redoublé.

Soit les événements : $T$ : « L'élève a réussi le test » et $D$ : « L'élève a déjà redoublé ».
#if not prof [
  1. Traduire les informations de l'énoncé en notations mathématiques.
1. Traduire les informations de l'énoncé en notations mathématiques.
2. Représenter l'arbre pondéré de la situation.
3. Calculer $P(T inter overline(D))$
]

#if prof [
  1. Traduisons les informations à l'aide de $T$, $overline(T)$, $D$, $overline(D)$ :
     - $P(T) = 0,80$
     - $P_T (overline(D)) = 0,95$
     - $P_(overline(T)) (overline(D)) = 0,85$

  2. Arbre pondéré :
  
  #align(center)[
  #cetz.canvas({
    import cetz.draw: *
    tree-to-cetz(
      list-to-tree([
        - #[]
          / $P(overline(T))=0,2$: $overline(T)$
            / $P_(overline(T)) (overline(D))=0,85$: $overline(D)$
            / $P_(overline(T)) (D)=0,15$: $D$
          / $P(T)=0,8$: $T$
            / $P_T (overline(D))=0,95$: $overline(D)$ 
            / $P_T (D)=0,05$: $D$
      ]),
      
      draw-node: (node, ..) => {      
        content((), [#node.content])
      },
      grow: 5.5,
      spread: 2.5,
      parent-position: "center",
      direction: "right",
    )
  })
  ]

  3. Calculons $P(T inter overline(D))$, c'est-à-dire la probabilité d'avoir réussi le test et de n'avoir jamais redoublé :
  
    $P(T inter overline(D)) = P(T) times P_T (overline(D)) = 0,80 times 0,95 = 0,76$
] else [
  #acompleter()
]
]

= Partition de l'univers

== Définition

#definition[
Un ensemble d'événements de probabilité non nulles est une *_partition_* de l'univers $Omega$ si l'union des événements forme $Omega$ et que les intersections des événements sont deux à deux vides.

On parle aussi de *_système complet d'événements_*.
]

== Un exemple de partition

Cas avec 3 événements $A$, $B$ et $C$ qui forment une partition de $Omega$.

#grid(
  columns: (1fr, 1fr),
  align: horizon,
  [
    On a : $cases(A inter B = diameter\, A inter C = diameter\, B inter C = diameter, A union B union C = Omega)$
  ],
  [
    #align(center)[#image("images/parti.png", width: 100%)]
  ]
)

#if prof [
  Considérons un événement $D$ de $Omega$.

  On a $D = (A inter D) union (B inter D) union (C inter D)$

  Les événements $A inter D$, $B inter D$, $C inter D$ sont deux à deux incompatibles.

  On en déduit $P(D) = P(A inter D) + P(B inter D) + P(C inter D)$.

  D'où en utilisant les probabilités conditionnelles :
  $cases(P(A inter D) = P(A) times P_A (D), P(B inter D) = P(B) times P_B (D), P(C inter D) = P(C) times P_C (D))$

  On obtient : $P(D) = P(A) times P_A (D) + P(B) times P_B (D) + P(C) times P_C (D)$
] else [
  #acompleter()
]

On peut aussi représenter la situation avec l'arbre pondéré ci-dessous.

#align(center)[
#cetz.canvas({
  import cetz.draw: *
  tree-to-cetz(
    list-to-tree([
      - #[]
        / $P(C)$: $C$
          / $P_C (overline(D))$: $overline(D)$
          / $P_C (D)$: $D$
        / $P(B)$: $B$
          / $P_B (overline(D))$: $overline(D)$
          / $P_B (D)$: $D$
        / $P(A)$: $A$
          / $P_A (overline(D))$: $overline(D)$ 
          / $P_A (D)$: $D$
    ]),
    
    draw-node: (node, ..) => {      
      content((), [#node.content])
    },
    grow: 5.5,
    spread: 2.5,
    parent-position: "center",
    direction: "right",
  )
})
]

== Formule des probabilités totales

#propriete(titre:"Formule des probabilités totales")[
Soit ${A_1, A_2, ..., A_n}$ des événements formant une partition de $Omega$.

Pour tout événement $B$ de $Omega$ on a :

$P(B) = P(A_1 inter B) + P(A_2 inter B) + ... + P(A_n inter B)$

ou

$P(B) = P(A_1) P_(A_1) (B) + P(A_2) P_(A_2) (B) + ... + P(A_n) P_(A_n) (B)$
]

#if not prof [#pagebreak()]
#exemple[
Reprenons l'exemple du chapitre précédent.

#align(center)[
#cetz.canvas({
  import cetz.draw: *
  tree-to-cetz(
    list-to-tree([
      - #[]
        / $P(overline(T))=0,2$: $overline(T)$
          / $P_(overline(T)) (overline(D))=0,85$: $overline(D)$
          / $P_(overline(T)) (D)=0,15$: $D$
        / $P(T)=0,8$: $T$
          / $P_T (overline(D))=0,95$: $overline(D)$ 
          / $P_T (D)=0,05$: $D$
    ]),
    
    draw-node: (node, ..) => {      
      content((), [#node.content])
    },
    grow: 5.5,
    spread: 2.7,
    parent-position: "center",
    direction: "right",
  )
})
]

Calculer la probabilité qu'un élève choisi au hasard n'ait jamais redoublé.

#if prof [
  Comme ${T, overline(T)}$ forme une partition de l'univers on obtient d'après la formule des probabilités totales :

  $P(overline(D)) = P(T inter overline(D)) + P(overline(T) inter overline(D)) = 0,80 times 0,95 + 0,20 times 0,85 = 0,76 + 0,17 = 0,93$
] else [
  #acompleter()
]
]

#regles[
- La somme des probabilités des branches issues d'un même nœud est égale à 1.
- La probabilité d'une « feuille » (extrémité d'un chemin) est égale au produit des probabilités du chemin aboutissant à cette feuille.
- La probabilité d'un événement associé à plusieurs « feuilles » est égale à la somme des probabilités de chacune de ces « feuilles ».
]

= Probabilités et indépendance

== Indépendance de deux événements

#definition[
On dit que deux événements $A$ et $B$ de probabilité non nulle sont *_indépendants_* si et seulement si :
$
P(A inter B) = P(A) times P(B)
$
]

#remarque[
Cela équivaut à $P_A (B) = P(B)$ ou $P_B (A) = P(A)$.
]

#exemple[
On tire une carte au hasard dans un jeu de 32 cartes.

Soit $R$ l'événement « On tire un roi ».
Soit $T$ l'événement « On tire un trèfle ».

Déterminer si les événements $R$ et $T$ sont indépendants.

#if prof [
  - $P(R) = 4/32 = 1/8$
  - $P(T) = 8/32 = 1/4$
  - $P(R inter T) = 1/32$

  On constate que $P(R) times P(T) = 1/8 times 1/4 = 1/32 = P(R inter T)$.

  Donc les événements $R$ et $T$ sont indépendants.

  Ainsi, par exemple, $P_T (R) = P(R)$, ce qui signifie que la probabilité de tirer un roi parmi les trèfles est égale à la probabilité de tirer un roi parmi toutes les cartes.
] else [
  #acompleter()
]
]

#propriete[
Si $A$ et $B$ sont indépendants, alors $overline(A)$ et $B$ sont indépendants.
]

#demonstration[
#if prof [
  Soit $A$ et $B$ deux événements indépendants.

  $
  P(overline(A) inter B) &= P(B inter overline(A))\
  &= P(B) times P_B (overline(A))\
  &= P(B) times (1 - P_B (A))\
  &= P(B) times (1 - P(A)) quad "car " A " et " B " sont indépendants"\
  &= P(B) times P(overline(A))
  $

  Donc $overline(A)$ et $B$ sont indépendants.
] else [
  #acompleter()
]
]

== Succession de deux épreuves indépendantes

#definition[
Plusieurs expériences sont *_identiques_* et *_indépendantes_* si :

- elles ont les mêmes issues
- et chaque issue possède la même probabilité
]

#proprietes[
On considère une expérience aléatoire à deux issues $A$ et $B$ avec les probabilités $P(A)$ et $P(B)$.

Si on répète l'expérience deux fois de suite :

- la probabilité d'obtenir l'issue $A$ suivie de l'issue $B$ est égale à $P(A) times P(B)$
- la probabilité d'obtenir l'issue $B$ suivie de l'issue $A$ est égale à $P(B) times P(A)$
]
