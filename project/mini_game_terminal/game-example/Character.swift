//
//  Character.swift
//  game-example
//
//  Created by Florian on 5/9/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

class Character {
    var name: String
    let classe: Classes
    var weapon: Weapon
    var life: Int
    
    init(name: String, classe: Classes) {
        self.name = name
        self.classe = classe
        
        switch self.classe {
        case .Hunter:
            self.weapon = Bow()
            self.life = 80
        case .Warrior:
            self.weapon = Sword()
            self.life = 100
        case .Mage:
            self.weapon = Wand()
            self.life = 55
        }
    }
    // Calcule la vie perdu
    func takeDamages(damageTaken: Int) {
        self.life = self.life - damageTaken
        
        // Si le joueur à sa vie inférieur à 0 il est mort le compteur est auto à 0
        if self.life < 0 {
            self.life = 0
        }
    }
    
    // fonction d'attaques.
    func attack(aCharacter: Character) {
        aCharacter.takeDamages(damageTaken: self.weapon.damages)
    }
    
    // Boost l'arme du personnage
    func weaponBoost() {
        self.weapon.damages += 5
    }
    
    // Description de l'état du personnage
    func description() {
        print("=========================================="
            + "\n🎫 Name: " + self.name
            + "\n❤️ Life: \(self.life)"
            + "\n🔋 Weapon Damage: \(self.weapon.damages)"
            + "\n==========================================\n")
    }
    
    // Etat du jeu (action des joueurs)
    func play(attack character: Character) {
        var userChoice: Int
        
        // description
        description()
        // Boucle pour connaitre l'intention du joueur
        repeat {
            print("What do you want to do?\n\n"
            + "1. ⚔️ Attack\n"
            + "2. 🏋🏻‍♂️ Boost your weapon\n")
            userChoice = input()
            print()
        } while userChoice != 1 && userChoice != 2
        
        userChoice == 1 ? self.attack(aCharacter: character) : self.weaponBoost()
    }
}
