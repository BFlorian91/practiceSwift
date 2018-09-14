//
//  Player.swift
//  projet 3.0
//
//  Created by Florian on 4/10/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import Foundation

class Player {
    var playerName = String() // name of Player
    var teamName = String() // name of Team
    var characterSelected = [Any]() // Array characters
    var characterName = [String]() // Array of characters names
    var nameCheck = [String]() // All name choose by the player for uniqueness of data

    // Function for claimed the Name of the Team
    func createTeam() {
        if let nameOfTeam = readLine() {
            if nameCheck.contains(nameOfTeam) {
                print("The name of is already taken, please chose another one!")
                createTeam()
            } else {
                teamName = nameOfTeam
                nameCheck.append(nameOfTeam)
            }
            
        }
    }
    
    // Function for claimed the Name of the Player
    func namePlayer() {
        if let nameOfPlayer = readLine() {
            if nameCheck.contains("\(nameOfPlayer)") {
                print("This name is already taken, please choose another one!")
                namePlayer()
            } else {
                playerName = nameOfPlayer //playerName = nameOfPlayer
                nameCheck.append(nameOfPlayer)
            }
        }
    }
  
    // Function for name all the characters player has chosen
    func nameOfCharacter() {
        while characterName.count < 3 {
            print("choose a name for this character:")
            if let nameOfCharacter = readLine() {
                // if the nameCheck array contains already another same name, users must be choose another one.
                if nameCheck.contains("\(nameOfCharacter)") {
                    print("The name is already taken, please choose another one")
                }
                else {
                    characterName.append(nameOfCharacter)
                    nameCheck.append(nameOfCharacter)
                    characterChoice()
                }
            }
        }
    }
    
    
    // Funtion for selected the 3 characters
    func characterChoice() {
        while characterSelected.count < 3 {
            
            print("\n1. Warrior\n"
                + "2. Wizard\n"
                + "3. Dwarf\n"
                + "4. Giant\n")
            // if player has already chose 1 character ->
            if characterSelected.count > 0 {
                print("Choose another one: \n")
            }
            if let characterChoice = readLine() {
                switch characterChoice {
                    case "1":
                        characterSelected.append(Warrior())
                        nameOfCharacter()
                    case "2":
                        characterSelected.append(Wizzard())
                        nameOfCharacter()
                    case "3":
                        characterSelected.append(Dwarf())
                        nameOfCharacter()
                    case "4":
                        characterSelected.append(Giant())
                        nameOfCharacter()
                    default:
                        print("Error bad instruction !")
                }
            }
        }
    }
}
