# Programme officiel — spécialité mathématiques, première générale

Utiliser pour vérifier qu'un cours, une fiche d'exercices ou un DS ne dépasse pas ce qui est officiellement au programme (contenus, capacités attendues, démonstrations exigibles) et pour distinguer le socle obligatoire des approfondissements facultatifs.

**⚠️ Brouillon à valider par l'utilisateur avant d'être considéré comme définitif** (voir note en fin de fichier) — voir en particulier l'avertissement ci-dessous sur le changement de programme en cours d'année.

## Source et validité

- **Texte en vigueur pour l'année scolaire 2026-2027 (celle en cours) : arrêté du 26 février 2026** fixant le programme d'enseignement de spécialité de mathématiques de la classe de première de la voie générale, publié au JORF n°0074 du 27 mars 2026 (NOR non vérifié dans cette recherche) et consultable au Bulletin officiel de l'éducation nationale, de la jeunesse et des sports du 2 avril 2026 (BO n° 14 / 2026, texte MENE2602917A). L'article 2 de l'arrêté précise que ses dispositions **entrent en application à la rentrée de l'année scolaire 2026-2027**.
- Page BOEN : https://www.education.gouv.fr/bo/2026/Hebdo14/MENE2602917A
- Texte réglementaire (arrêté) sur Légifrance : https://www.legifrance.gouv.fr/jorf/id/JORFTEXT000053723235
- Annexe (programme détaillé, document du Conseil supérieur des programmes, PDF) : https://cache.media.education.gouv.fr/file/CSP/20/0/1e_Mathematiques_Specialite_Voie_generale_1021200.pdf — c'est le document qui a servi de base à ce fichier (voir « Notes de fiabilité »).
- **⚠️ Point de vigilance majeur, propre à ce niveau** : contrairement à la terminale générale et à l'option mathématiques complémentaires (où le nouveau programme issu des arrêtés du 26 février 2026 n'entre en application qu'à la rentrée **2027-2028**, et où le programme de 2019 fait donc encore foi cette année), **la classe de première est concernée dès la rentrée 2026-2027** — c'est-à-dire l'année scolaire en cours. Le programme ci-dessous est donc bien le programme applicable *maintenant*, et non celui de 2019.
- Ancien texte, désormais **obsolète** pour la première générale depuis la rentrée 2026-2027 : arrêté du 17 janvier 2019 (BOEN spécial n°1 du 22 janvier 2019, NOR MENE1901632A). Ne plus l'utiliser comme référence, y compris pour du contenu qui semblerait inchangé : se reporter au texte 2026 ci-dessous.
- Horaire : 4h/semaine en première générale (enseignement de spécialité).

## Comment lire ce document

Pour chaque section : **Contenus** (notions à enseigner), **Capacités attendues** (ce que l'élève doit savoir faire, donc évaluable), **Démonstrations exigibles** (à connaître/refaire, éventuellement dans une version à trous élève), **Exemples d'algorithme** (illustrations suggérées par le texte officiel, souvent en Python), **Approfondissements possibles** (facultatifs, à l'initiative du professeur — ni obligatoires ni exclus, mais non exigibles à l'évaluation sauf s'ils ont été explicitement traités en classe).

Le programme officiel précise lui-même : « Ce découpage n'est pas un plan de cours et il est essentiel d'exploiter les possibilités d'interaction entre ces parties. » Les cinq grandes parties du programme sont : Algèbre, Analyse, Géométrie, Probabilités et statistique, Algorithmique et programmation ; le Vocabulaire ensembliste et logique est transversal (« ne doit pas faire l'objet de séquences spécifiques »).

## Algèbre

### Suites numériques, modèles discrets
- Contenus : modes de génération d'une suite — explicite $u_n = f(n)$, par récurrence $u_(n+1) = f(u_n)$, par un algorithme, par des motifs géométriques ou combinatoires (nombres figurés, dénombrement dépendant d'un entier naturel) ; notations $u(n)$, $u_n$, $(u(n))$, $(u_n)$ ; suites arithmétiques (définition, calcul du terme général, lien avec les évolutions à accroissements constants et avec les fonctions affines, calcul de $1+2+dots.c+n$) ; suites géométriques (définition, calcul du terme général, lien avec les évolutions à taux constant et avec la fonction exponentielle, calcul de $1+q+dots.c+q^n$) ; sur des exemples, introduction *intuitive* de la notion de limite, finie ou infinie, d'une suite.
- Capacités attendues : utiliser et croiser les registres langue naturelle / algébrique / graphique pour une suite ; proposer/modéliser une situation générant une suite ; déterminer une relation explicite ou de récurrence pour une suite définie par un motif géométrique ou une question de dénombrement ; calculer des termes d'une suite définie explicitement, par récurrence ou par un algorithme ; pour une suite arithmétique ou géométrique, calculer le terme général et la somme de termes consécutifs ; modéliser un phénomène discret à croissance linéaire par une suite arithmétique, à croissance exponentielle par une suite géométrique ; conjecturer, dans des cas simples, la limite éventuelle d'une suite.
- Démonstrations exigibles : calcul du terme général d'une suite arithmétique et d'une suite géométrique ; calcul de $1+2+dots.c+n$ ; calcul de $1+q+dots.c+q^n$.
- Exemples d'algorithme : calcul de termes d'une suite, de sommes de termes, de seuil ; calcul de factorielle ; liste des premiers termes d'une suite (suite de Syracuse, suite de Fibonacci).
- **Hors-programme / limites explicites du texte officiel** : « Toute formalisation [de la limite] est exclue » — seule une approche intuitive, numérique et algorithmique (recherche de seuil) est attendue, aucune définition formelle de limite de suite. Les suites quadratiques « peuvent être abordées, mais aucune connaissance spécifique à leur sujet n'est au programme ».
- Approfondissements possibles (facultatifs) : tour de Hanoï ; somme des $n$ premiers carrés, des $n$ premiers cubes ; remboursement d'un emprunt par annuités constantes.

### Équations, fonctions polynômes du second degré
- Contenus : fonction polynôme du second degré sous forme factorisée — racines, signe, somme et produit des racines ; forme canonique, discriminant, factorisation éventuelle, résolution de l'équation du second degré, signe.
- Capacités attendues : étudier le signe d'une fonction polynôme du second degré donnée sous forme factorisée ; déterminer les fonctions polynômes du second degré s'annulant en deux réels distincts ; factoriser en diversifiant les stratégies (racine évidente, racines détectées par somme/produit, identité remarquable, formules générales) ; déterminer deux réels connaissant leur somme $s$ et leur produit $p$, comme racines de $x |-> x^2 - s x + p$ ; choisir une forme adaptée (développée réduite, canonique, factorisée) selon le problème (équation, inéquation, optimisation, variations).
- Démonstration exigible : résolution de l'équation du second degré.
- Exemple d'algorithme : méthode de Héron pour l'approximation numérique des racines, en utilisant la forme canonique.
- **Précision importante** : les élèves doivent savoir déterminer la forme canonique *dans des cas simples* à l'aide de l'identité $x^2 + 2 a x = (x+a)^2 - a^2$ (méthode de complétion du carré) — mais « le calcul effectif de la forme canonique dans le cas général n'est pas un attendu du programme ».
- Approfondissements possibles : factorisation d'un polynôme du troisième degré admettant une racine, et résolution de l'équation associée ; factorisation de $x^n - 1$ par $x-1$, de $x^n - a^n$ par $x-a$.

## Analyse

### Dérivation
- Contenus, point de vue local : taux de variation, sécantes à la courbe représentative en un point ; nombre dérivé d'une fonction en un point, comme limite du taux de variation, notation $f'(a)$ — introduit à partir de la perception *intuitive* de cette limite (représentations graphiques logicielles, calcul algébrique du taux de variation pour les fonctions du second degré et la fonction inverse, calcul numérique de $f(a+h)-f(a)$ pour $h$ proche de 0) ; tangente en un point comme « limite des sécantes », pente, équation $y = f(a) + f'(a)(x-a)$.
- Contenus, point de vue global : fonction dérivable sur un intervalle, fonction dérivée ; fonction dérivée des fonctions carré, cube, inverse, racine carrée ; opérations sur les fonctions dérivables (somme, produit, inverse, quotient, dérivée de $x |-> g(a x+b)$) ; pour $n in ZZ$, dérivée de $x |-> x^n$ ; fonction valeur absolue (courbe, étude de la dérivabilité en 0).
- Capacités attendues : calculer un taux de variation, la pente d'une sécante ; interpréter le nombre dérivé en contexte (pente d'une tangente, vitesse instantanée, coût marginal) ; déterminer graphiquement un nombre dérivé, construire une tangente connaissant le nombre dérivé ; déterminer l'équation de la tangente en un point ; à partir de la définition, calculer le nombre dérivé en un point ou la fonction dérivée de la fonction carré, de la fonction inverse ; dans des cas simples, calculer une fonction dérivée en utilisant les propriétés des opérations.
- Démonstrations exigibles : équation de la tangente en un point à une courbe représentative ; la fonction racine carrée n'est pas dérivable en 0 ; fonction dérivée de la fonction carrée, de la fonction inverse ; fonction dérivée d'un produit.
- Exemple d'algorithme : écrire la liste des coefficients directeurs des sécantes pour un pas donné.
- **Hors-programme / précision** : « On n'en donne pas de définition formelle » — le nombre dérivé (et donc la notion de limite sous-jacente) reste à ce niveau une notion intuitive, jamais formalisée comme en terminale.

### Variations et courbes représentatives des fonctions
- Contenus : lien entre le sens de variation d'une fonction dérivable sur un intervalle et le signe de sa fonction dérivée ; caractérisation des fonctions constantes ; nombre dérivé en un extremum, tangente à la courbe représentative (horizontale).
- Capacités attendues : étudier les variations d'une fonction, déterminer les extremums ; résoudre un problème d'optimisation ; exploiter les variations d'une fonction pour établir une inégalité, étudier la position relative de deux courbes ; étudier, en lien avec la dérivation, une fonction polynôme du second degré (variations, extremum, allure selon le signe du coefficient de $x^2$) ; pour $a>0$ donné, étudier $f(x) = x^3 + a x$ et $g(x) = x^3 - a x$, en liant leurs variations au signe de $f'$ et $g'$.
- Exemple d'algorithme : méthode de Newton, en se limitant à des cas favorables.

### Fonction exponentielle
- Contenus : définition de la fonction exponentielle comme unique fonction dérivable sur $RR$ vérifiant $f'=f$ et $f(0)=1$ (**existence admise**), notation $exp(x)$ ; pour tous réels $x,y$ : $exp(x+y) = exp(x) exp(y)$ et $exp(x) exp(-x) = 1$ ; nombre $e$, notation $e^x$ ; pour tout réel $a$, la suite $(e^(n a))$ est une suite géométrique ; signe, sens de variation et courbe représentative.
- Capacités attendues : transformer une expression à l'aide des propriétés algébriques de l'exponentielle ; pour $k>0$ donné, représenter graphiquement $t |-> e^(-k t)$ et $t |-> e^(k t)$ ; modéliser une situation par une croissance ou décroissance exponentielle (évolution d'un capital à taux fixe, décroissance radioactive).
- Démonstrations exigibles : unicité d'une fonction $f$ dérivable sur $RR$ telle que $f'=f$ et $f(0)=1$ ; pour tous réels $x,y$, $exp(x+y)=exp(x)exp(y)$ ; la fonction exponentielle est strictement positive et croissante.
- Exemple d'algorithme : construction de l'exponentielle par la méthode d'Euler ; détermination d'une valeur approchée de $e$ à l'aide de la suite $((1+1/n)^n)$.
- **Hors-programme / précision** : l'**existence** de la fonction exponentielle est **admise**, seule son unicité est démontrée.
- Approfondissement possible : fonctions dérivables $f$ vérifiant $f(x+y)=f(x)+f(y)$ pour tous réels $x,y$.

### Fonctions trigonométriques
- Contenus : cercle trigonométrique, longueur d'arc, radian ; enroulement de la droite sur le cercle trigonométrique, image d'un nombre réel ; cosinus et sinus d'un nombre réel, lien avec le sinus et le cosinus dans un triangle rectangle, valeurs remarquables ; fonctions cosinus et sinus (parité, périodicité, courbes représentatives) ; fonctions dérivées de cosinus et sinus (**admises**).
- Capacités attendues : placer un point sur le cercle trigonométrique ; lier la représentation graphique des fonctions cosinus et sinus au cercle trigonométrique ; traduire graphiquement la parité et la périodicité ; par lecture du cercle trigonométrique, déterminer, pour des valeurs remarquables de $x$, les cosinus et sinus d'angles associés à $x$.
- Démonstrations exigibles : calcul de $sin(pi/4)$, $cos(pi/3)$, $sin(pi/3)$.
- Exemple d'algorithme : approximation de $pi$ par la méthode d'Archimède.
- **Hors-programme / précision** : « première approche » **principalement graphique** des fonctions trigonométriques ; les fonctions dérivées de cosinus et sinus sont admises, **pas de démonstration exigible** à ce niveau ; pas de fonction tangente au programme.

## Géométrie

### Calcul vectoriel et produit scalaire
- Contenus : produit scalaire à partir de la projection orthogonale et de la formule avec le cosinus, caractérisation de l'orthogonalité ; bilinéarité, symétrie ; en base orthonormée, expression du produit scalaire et de la norme, critère d'orthogonalité ; développement de $norm(arrow(u)+arrow(v))^2$ ; formule d'Al-Kashi ; expressions du produit scalaire à l'aide des normes : $arrow(u) dot arrow(v) = 1/2 (norm(arrow(u)+arrow(v))^2 - norm(arrow(u))^2 - norm(arrow(v))^2) = 1/4 (norm(arrow(u)+arrow(v))^2 - norm(arrow(u)-arrow(v))^2)$ ; transformation de l'expression $arrow(M A) dot arrow(M B)$ ; transformation de $M A^2 + M B^2$ à l'aide du milieu de $[A B]$ et de la formule de la médiane ; centre de gravité d'un triangle, intersection des médianes, minimisation de $M A^2+M B^2+M C^2$.
- Capacités attendues : utiliser le produit scalaire pour démontrer une orthogonalité, calculer un angle, une longueur ; calculer le produit scalaire de deux vecteurs en choisissant la méthode adaptée (projection orthogonale, coordonnées, normes et angle, normes seules) ; utiliser le produit scalaire pour résoudre un problème géométrique (recherche de lieux, de lignes de niveau, optimisation).
- Démonstrations exigibles : formule d'Al-Kashi (par le produit scalaire) ; ensemble des points $M$ tels que $arrow(M A) dot arrow(M B) = 0$ ; transformations de $M A^2+M B^2$ et de $M A^2+M B^2+M C^2$ ; les médianes d'un triangle sont concourantes au centre de gravité.
- **Hors-programme / précision** : « La notion générale de barycentre n'est pas au programme » — seul le centre de gravité d'un triangle (cas particulier) est étudié, comme point d'application du produit scalaire.
- Approfondissements possibles : loi des sinus ; droite d'Euler d'un triangle.

### Géométrie repérée
Cette section suppose le plan rapporté à un repère orthonormé.
- Contenus : vecteur normal à une droite (le vecteur de coordonnées $(a,b)$ est normal à la droite d'équation $a x + b y + c = 0$, le vecteur $(-b,a)$ en est un vecteur directeur) ; équation de cercle ; parabole représentative d'une fonction polynôme du second degré, axe de symétrie, sommet.
- Capacités attendues : déterminer une équation cartésienne d'une droite connaissant un point et un vecteur normal ; déterminer les coordonnées du projeté orthogonal d'un point sur une droite ; déterminer et utiliser l'équation d'un cercle donné par son centre et son rayon, ou par un diamètre ; reconnaître une équation de cercle, en déterminer centre et rayon ; déterminer l'axe de symétrie et le sommet d'une parabole d'équation $y=a x^2+b x+c$ ; déterminer l'intersection d'un cercle ou d'une parabole avec une droite parallèle à un axe ; utiliser un repère pour étudier une configuration.
- Approfondissements possibles : recherche d'une équation du cercle passant par trois points non alignés donnés par leurs coordonnées ; recherche de l'ensemble des points équidistants de l'axe des abscisses et d'un point donné.

## Probabilités et statistique

### Probabilités conditionnelles et indépendance
- Contenus : probabilité conditionnelle d'un événement $B$ sachant un événement $A$ de probabilité non nulle, notation $P_A (B)$ ; indépendance de deux événements ; arbres pondérés, règle du produit, règle de la somme ; partition de l'univers (systèmes complets d'événements), formule des probabilités totales ; succession de deux épreuves indépendantes, représentation par un arbre ou un tableau.
- Capacités attendues : construire un arbre pondéré ou un tableau en lien avec une situation donnée, passer du registre de la langue naturelle au registre symbolique et inversement ; utiliser un arbre pondéré ou un tableau pour calculer une probabilité ; calculer des probabilités conditionnelles présentées sous forme de tableau croisé d'effectifs (tirage au sort avec équiprobabilité d'un individu dans une population) ; dans des cas simples, calculer une probabilité à l'aide de la formule des probabilités totales ; distinguer en situation $P_A (B)$ et $P_B (A)$ (par exemple dans des situations de type « faux positifs ») ; représenter une répétition de deux épreuves indépendantes par un arbre ou un tableau.
- Exemple d'algorithme : méthode de Monte-Carlo (estimation de l'aire sous une parabole, estimation du nombre $pi$).
- **Hors-programme / précision** : « La notion de fréquence conditionnelle ne fait pas l'objet d'une étude » — seul le calcul de probabilité conditionnelle à partir d'un tableau croisé d'effectifs est attendu.
- Approfondissements possibles : exemples de succession de plusieurs épreuves indépendantes ; exemples de marches aléatoires.

### Variables aléatoires réelles
**Cadre du programme, à respecter strictement** : « Le programme ne considère que des univers finis et des variables aléatoires réelles. » Aucune loi nommée (binomiale, géométrique, à densité...) n'est étudiée à ce niveau : celles-ci relèvent de la terminale et/ou de l'option mathématiques complémentaires.
- Contenus : variable aléatoire réelle, comme modélisation du résultat numérique d'une expérience aléatoire, formalisée comme fonction définie sur l'univers et à valeurs réelles ; loi d'une variable aléatoire ; espérance, variance, écart type d'une variable aléatoire.
- Capacités attendues : interpréter en situation et utiliser les notations $\{X=a\}$, $\{X<a\}$, $P(X=a)$, $P(X<a)$, passer du registre de la langue naturelle au registre symbolique et inversement ; modéliser une situation à l'aide d'une variable aléatoire ; déterminer la loi de probabilité d'une variable aléatoire ; calculer une espérance, une variance, un écart type ; utiliser la notion d'espérance dans une résolution de problème (mise pour un jeu équitable, etc.).
- Exemples d'algorithmes : algorithme renvoyant l'espérance, la variance ou l'écart type d'une variable aléatoire ; fréquence d'apparition des lettres d'un texte donné, en français, en anglais.
- Approfondissements possibles : formule de König-Huygens ; pour $X$ variable aléatoire, étude de la fonction du second degré $x |-> E((X-x)^2)$.
- Expérimentations attendues (volet Python, prolonge la seconde) : simuler une variable aléatoire avec Python ; lire, comprendre et écrire une fonction Python renvoyant la moyenne d'un échantillon de taille $n$ d'une variable aléatoire ; étudier sur des exemples la distance entre la moyenne d'un échantillon simulé de taille $n$ et l'espérance de la variable aléatoire ; simuler, avec Python ou un tableur, $N$ échantillons de taille $n$ d'une variable aléatoire d'espérance $mu$ et d'écart type $sigma$, et calculer la proportion des cas où l'écart entre la moyenne d'échantillon $m$ et $mu$ est inférieur ou égal à $2 sigma slash sqrt(n)$.

## Algorithmique et programmation

L'enseignement de spécialité de première vise la **consolidation** des notions de variable, d'instruction conditionnelle et de boucle, ainsi que l'utilisation des fonctions (déjà vues en seconde). **La seule notion nouvelle est celle de liste**, qui trouve sa place dans de nombreuses parties du programme (suites numériques, tableaux de valeurs, séries statistiques...).
- Génération des listes en compréhension et en extension, mise en lien avec la notion d'ensemble ; on se limite aux listes, sans présenter d'autres types de collections (pas de dictionnaires, tuples, etc., à ce niveau).
- Capacités attendues : générer une liste (en extension, par ajouts successifs, ou en compréhension) ; manipuler des éléments d'une liste (ajouter, supprimer...) et leurs indices ; parcourir une liste ; itérer sur les éléments d'une liste.
- Les algorithmes peuvent être écrits en langage naturel ou en Python ; le symbole « $arrow.l$ » (ou `←`) désigne l'affectation en langage naturel, comme en seconde. Accent mis sur la programmation modulaire (découpage d'une tâche complexe en tâches plus simples).

## Vocabulaire ensembliste et logique (transversal)

« L'apprentissage des notations mathématiques et de la logique ne doit pas faire l'objet de séquences spécifiques mais prend naturellement sa place dans tous les chapitres du programme. »
- Notions d'élément d'un ensemble, de sous-ensemble, d'appartenance et d'inclusion, de réunion, d'intersection et de complémentaire ; symboles $in$, $subset$, $sect$, $union$ ; notation des ensembles de nombres et des intervalles ; notion de couple et de produit cartésien de deux ensembles. Pour le complémentaire d'un sous-ensemble $A$ de $E$ : notation probabiliste $overline(A)$, ou notation $E backslash A$.
- Raisonnement logique, sur des exemples : utiliser les connecteurs logiques « et », « ou » ; identifier le statut des égalités (identité, équation) et celui des lettres utilisées (variable, indéterminée, inconnue, paramètre) ; utiliser les quantificateurs **en langage naturel uniquement** — « les symboles $forall$ et $exists$ ne sont pas exigibles » — et repérer les quantifications implicites, notamment dans les propositions conditionnelles ; manipuler des implications et des équivalences logiques, employer « condition nécessaire », « condition suffisante » ; distinguer une proposition de sa réciproque ; utiliser un contre-exemple pour infirmer une proposition universelle ; utiliser des raisonnements par disjonction des cas, par l'absurde, par contraposition.

## Notes de fiabilité de ce document

Ce fichier a été rédigé à partir d'une recherche web effectuée en août 2026, en deux temps :
1. Identification du cadre réglementaire : recherche des textes officiels (Légifrance, education.gouv.fr) pour confirmer quel programme est en vigueur pour l'année scolaire 2026-2027. Cette recherche a mis en évidence un point non trivial et à vérifier en priorité par l'utilisateur : contrairement à la terminale générale et aux mathématiques complémentaires (dont le nouveau programme 2026 n'entre en application qu'en 2027-2028), **le nouveau programme de première générale, issu de l'arrêté du 26 février 2026, s'applique dès la rentrée 2026-2027**, donc dès cette année scolaire. Ce point a été confirmé par la fiche Légifrance de l'arrêté (article 2) obtenue via récupération de page web, mais n'a pas pu être recoupé avec une deuxième source indépendante au moment de la rédaction : **à vérifier en premier lieu**, par exemple en consultant directement https://www.legifrance.gouv.fr/jorf/id/JORFTEXT000053723235 ou la page BOEN https://www.education.gouv.fr/bo/2026/Hebdo14/MENE2602917A (celle-ci a renvoyé une erreur d'accès lors de la récupération automatique — un accès direct depuis un navigateur devrait fonctionner).
2. Extraction du contenu du programme : le contenu détaillé ci-dessus provient d'un PDF téléchargé depuis `cache.media.education.gouv.fr` (dossier « CSP » — Conseil supérieur des programmes), dont le titre (« Mathématiques, classe de première, enseignement de spécialité, voie générale ») et la structure correspondent exactement au texte attendu, et dont le contenu a pu être lu **nativement et intégralement** (texte, pas d'OCR ni de décompression de flux bruts), ce qui donne une **confiance élevée** dans la fidélité de la transcription ci-dessus. Ce PDF n'a cependant pas pu être confirmé comme étant *au pixel près* l'annexe finale telle que publiée au Bulletin officiel du 2 avril 2026 (la page BOEN correspondante a renvoyé une erreur d'accès lors de cette recherche) : il pourrait en théorie s'agir d'une version de travail du Conseil supérieur des programmes légèrement antérieure au texte définitivement publié.

**Avant de considérer ce fichier comme définitif, merci de vérifier au moins :**
- Que l'entrée en application à la rentrée 2026-2027 (et non 2027-2028) est bien confirmée pour la première générale — c'est le point qui a le plus d'impact pratique sur ce qui peut être enseigné/évalué cette année.
- Que le contenu ci-dessus correspond bien à l'annexe officiellement publiée (comparer si besoin avec le PDF source ou la page BOEN indiqués plus haut).
- Les points « hors-programme » signalés en gras dans chaque section, qui sont particulièrement importants pour la rédaction de cours/DS/fiches conformes.
