//
//  Team.swift
//  OCR-RPG
//
//  Created by Thibault Ballof on 11/09/2021.
//

import Foundation
class Team {
    
    var team = [Character]()
    
    func createTeam() {
        while team.count < 3 {
            selectCharacter()
        }
        print("This is your team : \(team[0].name), \(team[1].name), \(team[2].name).")
    }
    
    
    func selectCharacter() {
        print("Entrez a pour le Guerrier, b pour le Mage, c pour le Voleur, d pour le Prêtre ou e pour le Chasseur.")
        let selectedchar = readLine()?.lowercased()
        
        switch selectedchar {
        case "a":
            print("Vous avez selectionné le Guerrier")
            team.append(Character(type: .Warrior))
        case "b":
            print("Vous avez selectionné le Mage")
            team.append(Character(type: .Mage))
        case "c":
            print("Vous avez selectionné le Voleur")
            team.append(Character(type: .Rogue))
        case "d":
            print("Vous avez selectionné le Prêtre")
            team.append(Character(type: .Priest))
        case "e":
            print("Vous avez selectionné le Chasseur")
            team.append(Character(type: .Hunter))
        default:
            print("Invalid choice!!!!!!!")
        }
    }
}
