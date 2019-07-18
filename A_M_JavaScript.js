/* Fichier lier avec du code HTML */

function affiche() {
    alert('Bonjour le monde'); // affiche un message dans une boite de dialogue
    console.log("Bonjour le monde"); // affiche un message dans la console de log des navigateurs
}

// DOM (Documents Objects Models)

var mainContent = document.getElementById("mainContent");   // récupere les infos DOM de l'objet qui a comme id "mainContent"
console.log(mainContent);
mainContent.setAttribute("align", "right");     // ajoute l'attribut "align" et la valeur "right" a l'objet qui a comme id "mainContent" (peut etre fais en CSS aussi)

var mainTitle = document.getElementById("mainTitle");
