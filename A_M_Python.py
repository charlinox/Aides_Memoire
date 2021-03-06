#coding:utf-8

"""
Title: Aide Mémoire pour python
Date: 19/03/2018
Create by: Florent
"""

print("Types D'Objet Standards")
print("\tentier numérique (int)")
print("\tnombre flottant: nombre décimal (float)")
print("\tchaîne de caractères (str)")
print("\tbooléen: valeur vrai ou faux | true/false (bool)")
print("\tliste/tableau (list)")
print("\tliste qui contient des éléments non modifiable après leur créations (tuple)")
print("\tdictionnaire: c'est un ensemble de valeur auquel on peut accéder grâce à d'autre objet (dict)")
print(" ")
print("Fonctions Standards")
print("\tprint('' '') -> affiche a l'écran")
print("\tinput() -> lire les entrées clavier !!! ATTENTION input() STOCK LES ENTREES CLAVIER UNIQUEMENT EN CHAINE DE CARACTERE !!!\n\t-> ex: prénom = input('quel est votre prénom?')")
print("\ttype() -> retourne le type d'une donnée, variable, etc...")
print("\tint(), float(), str(), bool() -> caster, convertir une donnée, variable...")
print("\treturn -> retourne une valeur ou un résultat")
print(" ")
print("Déclaration de variables")
print("\tPour déclarer un entier numérique (int)\n\t-> nom_de_la_variable = l'entier_numérique (ex: age = 18)")
print(" ")
print("\tPour déclarer un nombre numérique décimal 'flottant' (float)\n\t-> nom_de_la_variable = nombre_floattant (ex: litre_d_eau = 1.5) !!!ATTENTION NE PAS UTILISER DE VIRGULE MAIS UN POINT POUR LE/LES FLOAT!!!")
print(" ")
print("\tPour déclarer une chaîne de caractères (str)\n\t-> nom_de_la_variable = ''chaîne_de_caractère'' (ex: prenom = ''jacky'') !!!ATTENTION UTILISER DES GUIELLEMETS AVEC LES CHAINES DE CARACTERE!!!")
print(" ")
print("\tPour déclarer une liste/tableau (list)\n\t-> nom_de_la_variable = [''element'', ''de'', ''la'', ''liste''] (ex: liste_de_course = [''patate'', ''tomate'', ''mangue''])\n\t-> pour afficher un élément de la liste/tableau »» nom_de_la_liste[numéroIndex] (ex: liste_de_course[1] -> retournera 'tomate' car l'index commence a partir de 0 et non pas 1)")
print(" ")
print("\tPour déclarer une liste tuple (tuple)\n\t-> nom_de_la_variable = (''element'', ''non'', ''modifiable'') (ex: paris = (48.856578, 2.351828) )")
print(" ")
print("\tPour déclarer un  dictionnaire (dict)\n\t-> nom_de_la_variable = {''clé'': ''valeur'', ''new_clé'': ''new_valeur''} (ex: dico_fr_en = {''un'': ''one'', ''deux'': ''two''})\n\t-> pour retrouver/afficher la valeur voulu dans le dictionnaire on utilise la clé (ex: dico_fr_en[''un''] ->  retournera 'one')")
print(" ")
print("\t\tATTENTION LORS DE LA DECLARATION DE LIST/TUPLE/DICT A L'ORTHOGRAPHE EN FONCTION DU TYPE D'OBJET (str, int, float...) \nLE TYPE 'str' DOIT ETRE DECLARER AVEC DES GUIELLEMETS DOUBLE | LE TYPE 'int' ET 'float' NE NECESSITE PAS DE GUIELLEMETS")
print(" ")
print("Opérateur logique")
print("\tif -> si\n\tif condition_à_vérifier opérateur_mathématique valeur: (ex: if age == 18:)")
print(" ")
print("\telse -> sinon\n\tsi la condition if n'est pas valider alors else (ex: else:)")
print(" ")
print("\telif -> sinon si\n\tsi la condition if n'est pas valider alors sinon si (ex: elif un == one:)")
print(" ")
print("\tif ... not in ...-> si conditon n'est pas dans variable\n\tsi la condition if n'est pas dans la variable (ex: if nom_joueur not in dico.keys():)")
print(" ")
print("\tpass -> permet de quitter une condition")
print(" ")
print("\ttry ->  permet de d'essayer un bloc d'instructions (ex: try: |retour a la ligne| age == 18)")
print(" ")
print("\texcept -> permet d'exécuter du code au cas ou le test try échouerais. IL FAUT CONNAITRE L'EXCEPTION LEVER PAR PYTHON (c'est le mot clé qui est sur la dernière ligne en cas d'erreur levé)\n\t(ex: except FileNotFoundError: |retour a la ligne| bloc d'instructions a exécuter)")
print(" ")
print("\tfinally -> permet d'exécuter du code après un bloc 'try' quel que soit le résultat de l'exécution du bloc (qu'il y est des erreurs ou pas)\n\t(ex: finally: |retour a la ligne| instructions a exécuter qu'il y ait eu des erreurs ou non)")
print(" ")
print("Fonctions")
print("\tdef -> définie/initialise la fonction (ex: def nom_de_la_fonction():)\n\tpour utiliser la fonction une fois qu'elle est définie -> nom_de_la_fonction()")
print("\tLors de la DECLARATION/DEFINITION d'une fonction, on peut y attribuer des parametres; ex: def nom_de_la_fonction(nom_du_parametre):")
print("\tLors de l'utilisatiion d'une fonction, on peut lui attribuer un objet; ex: nom_de_la_fonction(nom_de_l_objet)")
print(" ")
print("Boucles")
print("\twhile -> tant que la condition est valider, exécute les opérations qui suivent (ex: while réponse_de_l_utilisateur != ''B'':)")
print("\tfor -> pour chaque items dans cette liste fais ceci (ex: for item in a_list:)")
print("\tMéthodes")
print("Chaine de caractères")
print("\texemple.split() | (exemple est le nom de la variable) ->  créer une liste a partir d'une chaine de caractères")
print("\texemple.strip() -> supprime tout les espaces blanc d'une chaîne de caractères situer au début ou a la fin")
print("\texemple.upper() -> met tout les mots d'une chaine de caractères en majuscule")
print("\texemple.lower() -> met tout les mots d'une chaine de caractères en minuscule")
print("\texemple.capitalize() -> met la première lettre d'une chaine de caractères en majuscule")
print("\texemple.center(6) -> centre le contenu de la chaine de caractères en mettant des espaces de chaque côté, prendre en compte le nombre de caractères dans la chaine => (>>>exemple = 'yo' >>>exemple.center(6) >>>'  yo  ') ")
print("\tprint(exemple[2]) -> affiche le troisième caractère la chaine 'exemple'")
print("\tprint(exemple[-1]) -> affiche le dernier caractère la chaine 'exemple'")
print("\tlen(exemple) -> compte le nombre de caractère dans la chaine 'exemple' (les espaces y compris)")
print("\thelp(str) -> affiche la doc sur les chaines de caractères")
print("\tPOUR PLUS D'INFOS VOIR main.py dans /home/florent/Documents/Formation Dev.../Exercice-Activité Des Cours/Python (base et POO)/ Objet, les chaines de caractères")
print(" ")
print("Listes")
print("\texemple.index('valeur') -> renvoi l'index d'une valeur")
print("\texemple.append('élément') -> ajoute un élément/valeur a la fin de la liste")
print("\texemple.insert(5, 'élément') -> ajoute un élément/valeur à un certain endroit de la liste (5 = le numéro de l'index ou sera placer la valeur/élément)")
print("\texemple[5] = 'new_valeur' -> modifie un élément de la liste")
print("\texemple.pop() -> supprime le dernier élément de la liste")
print("\texemple.remove('élément') -> supprime l'élément voulu")
print("\texemple.sort() -> fait le tri de la liste (pour classer une suite de chiffre du plus grand au plus petit)")
print(" ")
print("Dictionnaire")
print("\texemple.update({'one': 'Un', 'two': 'Deux'}) -> mettre à jour une ou plusieurs valeurs")
print("\texemple.pop('valeur_a_supprimer') -> supprime une valeur")
print("\texemple.keys('element') -> renvoi la clé de l'élément voulu")
print("\texemple.values('élément') -> renvois la valeur de l'élément voulu")
print("\texemple.items() -> renvoi la clé et la valeur d'un élément du dico")
print(" ")
print("Autres")
print("\timport nom_du_module -> importe un module")
print(" ")
print("Ressources complémentaire")
print("\tfonction open (pour lire/ouvrir un fichier json, ini, txt, cfg...) -> https://docs.python.org/3/library/functions.html#open ")
print("\tmodule de configuration json et ini -> https://deusyss.developpez.com/tutoriels/Python/les-modules-de-configuration/")