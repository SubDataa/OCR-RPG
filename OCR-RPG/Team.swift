//
//  Team.swift
//  OCR-RPG
//
//  Created by Thibault Ballof on 11/09/2021.
//

import Foundation
class Team {
    
    var team = [Character]()
    var stockedName = [String]()
    
    
    
    func fillTeam() {
        while team.count < 3 {
            selectCharacter()
        }
        print("This is your team : \(team[0].categories), \(team[1].categories), \(team[2].categories).")
    }
    

    func selectCharacter() {
        print("Entrez 1 pour le Guerrier, 2 pour le Mage, 3 pour le Voleur, 4 pour le Prêtre ou 5 pour le Chasseur.")
        let selectedchar = readLine()
        
        switch selectedchar {
        case "1":
            print("Vous avez selectionné le Guerrier")
            let warrior = Character(type: .Warrior)
            //checkName(char: warrior)
            team.append(warrior)
        case "2":
            print("Vous avez selectionné le Mage")
            let mage = Character(type: .Mage)
           // checkName(char: mage)
            team.append(mage)
        case "3":
            print("Vous avez selectionné le Voleur")
            let rogue = Character(type: .Rogue)
           // checkName(char: rogue)
            team.append(rogue)
        case "4":
            print("Vous avez selectionné le Prêtre")
            let priest = Character(type: .Priest)
            //checkName(char: priest)
            team.append(priest)
        case "5":
            print("Vous avez selectionné le Chasseur")
            let hunter = Character(type: .Hunter)
            //checkName(char: hunter)
            team.append(hunter)
        default:
            print("Invalid choice!!!!!!!")
        }
    }
    
    func checkName(char: Character) {
        print("Choose name of your character")
        let namedCharacter = readLine()
  
        
        if  stockedName.contains(namedCharacter!) {
            print("Error - Name already exist")
        } else {
            stockedName.append(namedCharacter!)
            char.name = namedCharacter!
        
        
        }
    }

}
