//
//  Team.swift
//  OCR-RPG
//
//  Created by Thibault Ballof on 11/09/2021.
//

import Foundation
class Team {
    
    var team = [CharacterType]()
    
    func createTeam() -> [CharacterType] {
        
        let selectedchar1 = readLine()
        
            if selectedchar1 == "a" {
                print("Vous avez selectionné le Guerrier")
                team.append(CharacterType.Warrior)
            } else  if selectedchar1 == "b" {
                print("Vous avez selectionné le Mage")
                team.append(CharacterType.Mage)
            } else if selectedchar1 == "c" {
                print("Vous avez selectionné le Voleur")
                team.append(CharacterType.Rogue)
            } else if selectedchar1 == "d" {
                print("Vous avez selectionné le Prêtre")
                team.append(CharacterType.Priest)
            } else if selectedchar1 == "e" {
                print("Vous avez selectionné le Chasseur")
                team.append(CharacterType.Hunter)
            }
        
        return team
    }
}
