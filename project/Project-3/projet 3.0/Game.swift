//
//  Game.swift
//  projet 3.0
//
//  Created by Florian on 4/10/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import Foundation

class Game {
    var gameStart = true
    var player1 = Player()
    var player2 = Player()
    
    
    func launchGame() { 
        while gameStart {
            // Name of player, team ...
            print("                         ⚔️⚔️⚔️ The Game Starting ⚔️⚔️⚔️ \n\n")
            // Team 1 Creation
            print("Team 1:")
            player1.createTeam()
            
            print("\nName of Player 1:")
            player1.namePlayer()
            
            print("Character for Player 1:")
            player1.characterChoice()
            print("Les characters choisis sont: \(player1.characterSelected)") // Debug
            
            
            // Team 2 Creation
            print("\nTeam 2:")
            player2.createTeam()
            
            print("\nName of Player 2:")
            player2.namePlayer()
            
            print("Character for Player 1:")
            player2.characterChoice()
            
            print("\n\nThe player 1 is \(player1.playerName) and he have the Team: \(player1.teamName) and he has 3 characters: \(player1.characterName[0]), \(player1.characterName[1]), \(player1.characterName[2])"
                + "\nThe player 2 is \(player2.playerName) and he have the Team: \(player2.teamName) and he has 3 characters: \(player2.characterName[0]), \(player2.characterName[1]), \(player2.characterName[2])")
            
            
            // End of the loop
            gameStart = false
        }
    }
}
