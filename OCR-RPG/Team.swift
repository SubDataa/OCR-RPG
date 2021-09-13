//
//  Team.swift
//  OCR-RPG
//
//  Created by Thibault Ballof on 11/09/2021.
//

import Foundation
class Team {
    
    var team = [Character]()
    
    func fillTeam() {
        while team.count < 3 {
            selectCharacter()
        }
        print("This is your team : \(team[0].name), \(team[1].name), \(team[2].name).")
    }
    

    func selectCharacter() {
        print("Entrez 1 pour le Guerrier, 2 pour le Mage, 3 pour le Voleur, 4 pour le Prêtre ou 5 pour le Chasseur.")
        let selectedchar = readLine()
        
        switch selectedchar {
        case "1":
            print("Vous avez selectionné le Guerrier")
            team.append(Character(type: .Warrior))
        case "2":
            print("Vous avez selectionné le Mage")
            team.append(Character(type: .Mage))
        case "3":
            print("Vous avez selectionné le Voleur")
            team.append(Character(type: .Rogue))
        case "4":
            print("Vous avez selectionné le Prêtre")
            team.append(Character(type: .Priest))
        case "5":
            print("Vous avez selectionné le Chasseur")
            team.append(Character(type: .Hunter))
        default:
            print("Invalid choice!!!!!!!")
        }
    }
}
