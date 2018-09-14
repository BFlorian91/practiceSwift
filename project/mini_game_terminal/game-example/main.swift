//
//  main.swift
//  game-example
//
//  Created by Florian on 5/9/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

// Demande à l'utilisateur un entier à la place d'un char
func input() -> Int {
    let strToInt = readLine()
    
    return Int(strToInt!)!
}
// Fonction pour bien séparer les étapes du jeux (plus clair pour l'utilisateur)
func pause() {
    print("Press any key for continue... 💬\n")
    _ = readLine()
}

// Variable des choix utilisateur
var user1Choice: Int
var user2Choice: Int

// Annonce de lancement du jeux
print("\t\t\t⚔️⚔️⚔️ Let's the battle begin !!! ⚔️⚔️⚔️\n\n")


// Nom des joueurs
print("🤹🏻‍♂️Name of player 1 ?")
let player1 = readLine()!

print("🧟‍♂️Name of player 2 ?")
let player2 = readLine()!

print("\n\n")

// Choix des personnages de l'utilisateur
repeat {
    print("Classe du personnage 1 :\n\n"
    + "1. 🏹 Hunter\n"
    + "2. 🗡 Warrior\n"
    + "3. 🔮 Mage\n")
    user1Choice = input()
} while user1Choice != 1 && user1Choice != 2 && user1Choice != 3

print()

repeat {
    print("Classe du personnage 2 :\n\n"
    + "1. 🏹 Hunter\n"
    + "2. 🗡 Warrior\n"
    + "3. 🔮 Mage\n")
    user2Choice = input()
} while user2Choice != 1 && user2Choice != 2 && user2Choice != 3

print()

// Grâce à l'énumération Classe, on va pouvoir préciser la classe des personnages des joueurs (via l'input())
var classe1: Classes!
switch user1Choice {
    case 1:
        classe1 = .Hunter
    case 2:
        classe1 = .Warrior
    case 3:
        classe1 = .Mage
    default:
        break
}

var classe2: Classes!
switch user2Choice {
    case 1:
        classe2 = .Hunter
    case 2:
        classe2 = .Warrior
    case 3:
        classe2 = .Mage
    default:
        break
}

// Création des personnages initialisé

var personnage1 = Character(name: player1, classe: classe1)
var personnage2 = Character(name: player2, classe: classe2)

while(personnage1.life > 0 && personnage2.life > 0) {
    personnage1.play(attack: personnage2)
    
    if(personnage2.life > 0) {
        personnage2.play(attack: personnage1)
    }
}

// Gestion du nom du vainqueur
var winnerName: String

if(personnage1.life > 0) {
    winnerName = personnage1.name
} else {
    winnerName = personnage2.name
}

// Affichage du gagnant
print("Le winner est " + winnerName + " !")


