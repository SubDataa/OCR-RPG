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
    
    
//Team filling
    func fillTeam() {
        while team.count < 3 {
            selectCharacter()
        }
        print("This is your team : \(team[0].categories), \(team[1].categories), \(team[2].categories).")
    }
    
//Selection of characters to build your team
    func selectCharacter() {
        print("Enter 1 for the Warrior, 2 for the Mage, 3 for the Rogue, 4 for the Priest or 5 for the Hunter.")
        let selectedchar = readLine()
        
        switch selectedchar {
        case "1":
            print("You have selected the Warrior")
            let warrior = Character(type: .Warrior)
            checkName(char: warrior)
            team.append(warrior)
        case "2":
            print("You have selected the Mage")
            let mage = Character(type: .Mage)
            checkName(char: mage)
            team.append(mage)
        case "3":
            print("You have selected the Rogue")
            let rogue = Character(type: .Rogue)
            checkName(char: rogue)
            team.append(rogue)
        case "4":
            print("You have selected the Priest")
            let priest = Character(type: .Priest)
            checkName(char: priest)
            team.append(priest)
        case "5":
            print("You have selected the Hunter")
            let hunter = Character(type: .Hunter)
            checkName(char: hunter)
            team.append(hunter)
        default:
            print("Invalid choice!!!!!!!")
        }
    }
 //Verification that the name of the chosen character does not already exist
    func checkName(char: Character) {
        print("Choose name of your character")
        let namedCharacter = readLine()
  
        
        if  stockedName.contains(namedCharacter!) {
            print("Error - Name already exist")
            print("Try again")
            checkName(char: char)
        } else {
            stockedName.append(namedCharacter!)
            char.name = namedCharacter!
        
        
        }
    }

}
