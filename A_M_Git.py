#coding:utf-8

"""
Title: Aide Mémoire Git
Date: 17/04/2018
Comment: Aide Mémoire pour utiliser Git corrctement
Create By: GRENAILLE Florent (riderflo85) (DevOne)
"""

print("\t\tCommandes de base: ")
print(" ")
print("git status --> voir l'état de Git DANS le répertoire courant")
print("\trenvoi n°1 -> 'fatal: ni ceci ni aucun de ses répertoires parents n'est un dépôt git .git'")
print("\tEN -> 'fatal: Not a git repository (or any of the parent directories): .git'")
print(" ")
print("\trenvoi n°2 -> 'Sur la branche master")
print("\t\tAucun commit")
print("\t\trien à valider (créez/copiez des fichies et utilisez 'git add' pour les suivre)'")
print("\tEN -> 'On branch master")
print("\t\tInitial commit")
print("\t\tnothing to commit (create/copy files and use 'git add' to track)'")
print(" ")
print("git init --> initialise le répertoire courant en répertoire git")
print("\trenvoi -> 'Dépôt Git vide initialisé dans /chemin/du/dossier/courant/'")
print("\tEN -> 'Initialized empty Git repository in /road/of/the/folder/'")
print(" ")
print("git add nom_du_fichier --> ajoute le fichier à l'index et dit à Git de se souvenir du fichier ainsi que des modifications dans l'index Git")
print(" ")
print("git commit [options] --> enregistre la suite des modifications, accompagné d'un message")
print("\t[options] : ")
print("\t-m -> lie(/lier) un message au commit !!!IMPORTANT TOUJOURS FAIRE UN MESSAGE AVEC -m !!! (exemple: git commit -m ''Ajout de fichier''")
print("\t-a -> tous les fichiers qui sont déjà dans l'index rajoute les si ils ont des modifications (cette option évite de faire 'git add' et peut s'utiliser comme ceci; git commit -a -m ''commentaire'')")
print(" ")
print("git checkout --> se positionne sur le commit sélectionné/voulu grâce au sha")
print(" ")
print("git checkout master --> revenir sur le dernier commit éffectué")
