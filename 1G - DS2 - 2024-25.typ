#import "@local/configbenji:1.0.0": *
#show: body => apply-template(
  classe: "Première Générale",
  eval: "Devoir Surveillé n°2",
  body
)

#historique[
  Calculatrice autorisée.\
  Les exercices peuvent être traités dans l'ordre de votre choix.\
  Tout résultat doit être justifié.
]

#v(1fr)

#exercice(points:5)[
Déterminer les racines, sous forme simplifiée, des polynômes suivants, puis factoriser ces polynômes quand c'est possible :
#set enum(numbering: "a)")
#columns(3)[
1. $2x^2-3x-9$
#colbreak()
2. $5x^2-8x+5$
#colbreak()
3. $2x^2-8x+8$]
]

#v(1fr)

#exercice(points:2)[
Donner un exemple de polynôme du second degré qui soit positif, puis négatif, puis de nouveau positif quand $x$ varie de $-oo$ à $+oo$. Justifier votre réponse.
]

#v(1fr)

#exercice(points:3)[
1. Sur votre copie double, construire un repère orthonormé $(O, I, J)$. Tracer le plus fidèlement possible dans ce repère la courbe $cal(C)_f$ représentative de la fonction inverse définie par $f(x) = 1/x$ sur $]0;4]$, en plaçant au préalable les points de la courbe d'abscisses $inline(1/4)$ ; $inline(1/2)$ ; $1$ ; $2$ ; $4$.
2. Sachant que $f'(2)=-1/4$, déterminer l'équation de la tangente à $cal(C)_f$ au point d'abscisse 2.
3. Déterminer, s'il existe, le nombre dérivé de la fonction inverse pour $x=3$, en cherchant la limite du taux d'accroissement.
]

#v(1fr)

#exercice(points:4)[
Dans le plan muni d'un repère $(O;I;J)$, on considère les courbes $cal(C)_f$ et $cal(C)_g$ représentatives des fonctions $f$ et $g$ définies sur $RR$ par :
#columns(2)[
$ f(x)=-x^2+8x-11 $
#colbreak()
$ g(x)=x-1 $]
Déterminer algébriquement (c'est-à-dire par le calcul et un tableau de signes), les positions relatives des courbes $cal(C)_f$ et $cal(C)_g$.
]

#v(1fr)
#pagebreak()

#exercice(points:3)[
On considère la fonction $f$ définie sur $RR$ par la relation :
$ f(x)=1/2x^2-2x+1 $
1. Montrer que pour tout $h in RR$, on a :\
  $f(4+h)-f(4)=1/2h^2+2h$
2. En déduire la valeur de $f'(4)$.
3. Tracer précisément dans le repère ci-dessous la droite $(d)$ tangente à la courbe représentative de $f$ au point d'abscisse 4. On donnera les coordonnées de deux points de cette tangente, choisis pour la tracer.


#align(center)[#image("images/1G - DS2 - 3.svg",width:50%)]
]

#v(1fr)
#exercice(points:3)[
Adossé à sa maison, Jean possède un jardin de forme rectangulaire ayant pour dimension 9 $m$ et 5 $m$.\
Il souhaite construire sur trois des côtés de ce jardin une allée ayant la même largeur et il plantera de la pelouse sur le reste du jardin. Il propose le schéma ci-dessous où la partie hachurée est l'espace de la pelouse.
#align(center)[#image("images/1G - DS2 - 1.PNG")]
Quelle doit être la largeur de l'allée pour que l'ensemble de la pelouse ait une surface de 10 $m^2$ ? (On exprimera l'aire de la pelouse sous forme d'un polynôme du second degré pour résoudre le problème)
]

#v(1fr)



