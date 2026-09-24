#import "@local/configbenji:1.0.0": *
#show: body => apply-template(
  classe: "Première Générale",
  eval: "Devoir Surveillé n°4",
  body
)

#historique[
  Calculatrice autorisée.\
  Les exercices peuvent être traités dans l'ordre de votre choix.\
  Sauf indication contraire, toutes les réponses doivent être justifiées et correctement rédigées.
]

#v(1fr)

#exercice(points:3)[
Dans ma rue, il pleut un soir sur quatre.\
S'il pleut, je sors mon chien avec une probabilité égale à $1/10$ ; s'il ne pleut pas, je sors mon chien avec une probabilité égale à $9/10$.\

Sachant que j'ai sorti mon chien hier soir, quelle est la probabilité qu'il ait plu ?
]

#v(1fr)

#exercice(points:5)[
A la ferme « La Poule Pondeuse », chaque jour on produit des oeufs de deux tailles différentes :
60% des oeufs sont moyens et 40% des oeufs sont gros. Les oeufs sont classés en deux catégories : ceux
de qualité ordinaire et ceux de qualité supérieure.\
On a remarqué que : 50% des oeufs moyens sont de qualité ordinaire, 20% des gros oeufs sont de qualité
ordinaire.\
On choisit un oeuf au hasard.\
On définit les événements suivants :
- $M$ : « l’oeuf est moyen »
- $G$ : « l’oeuf est gros »
- $O$ : « l’oeuf est de qualité ordinaire »
- $S$ : « l’oeuf est de qualité supérieure »

1. Représenter cette expérience aléatoire avec un arbre pondéré.
2. Donner la probabilité que l’oeuf soit de qualité supérieure sachant qu’il est gros.
3. Calculer la probabilité de prendre un oeuf gros et en même temps de qualité supérieure.
4. Calculer $P(S)$
5. Calculer $P_S (G)$
]

#v(1fr)

#exercice(points:3)[
On considère la suite $(u_n)_(n in NN)$ dont le terme de rang $n$ est donné par la formule :
$u_n=n^2-7n+1$

1. A l'aide de la calculatrice, compléter le tableau ci-dessous :
  #table(columns: 12,
  inset: 15pt,
  [$n$],[0],[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],
  [$u_n$],[],[],[],[],[],[],[],[],[],[],[])
2. Démontrer que la suite est croissante à partir du rang $4$.
]

#align(right)[_Tourner la page_]
#pagebreak()

#exercice(points:2)[
On considère la suite $(u_n)_(n in NN)$ définie par :
$u_n=-3^n/4$

Démontrer que cette suite est strictement décroissante.
]

#v(1fr)

#exercice(points:3)[
1. Donner la définition d'une suite divergente.
2. Donner un exemple de suite convergente définie explicitement en fonction d'un rang $n$.
3. Donner un exemple de suite divergente définie par récurrence.
]

#v(1fr)

#exercice(points:4)[
On considère la fonction $f$ définie sur $RR^+$ par l'expression :
$f(x)=sqrt(x)(-5x^2-5x-1)+1/2$
1. Déterminer l'expression et l'ensemble de définition de la fonction dérivée $f'$.
2. Dresser le tableau de variation de la fonction $f$.
3. Justifier que la fonction $f$ s'annule une seule fois sur son ensemble de définition.
]

#v(4fr)