//
//  Battle.swift
//  OCR-RPG
//
//  Created by Thibault on 11/09/2021.
//

import Foundation

struct Game {
    
    var isOver = false
    let p1 = Team()
    let p2 = Team()
    
    func createTeams() {
        
        // Create team 1
        print("Player 1 : Choose your characters")
        
        p1.fillTeam()
        
        //Create team 2
        print("Player 2 : Choose your characters")
        
        p2.fillTeam()
        
        // Show team
        print("Voici la composition des équipes")
        print("Player 1 : \(p1.team[0].name), \(p1.team[1].name), \(p1.team[2].name)")
        print("Player 2 : \(p2.team[0].name), \(p2.team[1].name), \(p2.team[2].name)")
    }
    
    func battle() {
        
        print("Select your character for fight")
        print(" 1 - \(p1.team[0].name) 2 - \(p1.team[1].name) 3 - \(p1.team[2].name) ")
        let selectedchar = Int(readLine() ?? "0") ?? 0
        print("Select your opponent")
        print(" 1 - \(p2.team[0].name) 2 - \(p2.team[1].name) 3 - \(p2.team[2].name) ")
        let selectedoppo = Int(readLine() ?? "0") ?? 0
        
        var char1 = p1.team[selectedchar - 1]
        var char2 = p2.team[selectedoppo - 1]
        
        let result = char1.weapon.atk - char2.weapon.atk
        
        if result > 0 {
            print("Player 1 win this round")
            char2.hp = char2.hp - char1.weapon.atk
            print("Player 1 : Il vous reste \(char2.hp)")

        } else if result < 0 {
            print("Player 2 win this round")
            char1.hp = char1.hp - char2.weapon.atk
            print("Player 1 : Il vous reste \(char1.hp)")
        }
        
        
    }
    
    
}
