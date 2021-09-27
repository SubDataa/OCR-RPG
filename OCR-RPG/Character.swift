//
//  Character.swift
//  OCR-RPG
//
//  Created by Thibault Ballof on 10/09/2021.
//

import Foundation

enum CharacterType {
    case Warrior
    case Mage
    case Rogue
    case Priest
    case Hunter
}

class Character {
    var categories: String
    var hp: Int
    var spell: String
    var type: CharacterType
    var weapon: Weapon
    var canATK: Bool
    var name: String
    

    var randomCarac = [4,5,6,7,8,9,10,11,12]
    
    func randomChest() {
        
        randomCarac.shuffle()
        weapon.atk = randomCarac.first!
        print("You have discover a chest, you find a new weapon : \(weapon.name) with \(weapon.atk) ATK")
    }
    
    
//Create Characters
    init(type: CharacterType) {
        self.type = type
        switch type {
        case .Warrior:
            self.categories = "Warrior"
            self.hp = 10
            self.spell = "Mortal Strike"
            self.weapon = Weapon(type: .axe)
            self.canATK = true
            self.name = ""
        case .Mage:
            self.categories = "Mage"
            self.hp = 7
            self.spell = "Fire bolt"
            self.weapon = Weapon(type: .wand)
            self.canATK = true
            self.name = ""
        case .Rogue:
            self.categories = "Rogue"
            self.hp = 5
            self.spell = "Embush"
            self.weapon = Weapon(type: .dagger)
            self.canATK = true
            self.name = ""
        case .Priest:
            self.categories = "Priest"
            self.hp = 3
            self.spell = "Heal"
            self.weapon = Weapon(type: .staff)
            self.canATK = false
            self.name = ""
        case .Hunter:
            self.categories = "Hunter"
            self.hp = 4
            self.spell = "Aimed shot"
            self.weapon = Weapon(type: .bow)
            self.canATK = true
            self.name = ""

        }
    }
    
   
// Check the character still has health points
    func isDead() -> Bool {
        if self.hp <= 0 {
            return true
        }
        return false
    }
    

}

