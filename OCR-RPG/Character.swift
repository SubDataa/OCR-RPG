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
    var name: String
    var hp: Int
    var spell: String
    var type: CharacterType
    var weapon: Weapon
    var canATK: Bool
    
    
//Create Characters
    init(type: CharacterType) {
        self.type = type
        switch type {
        case .Warrior:
            self.name = "Warrior"
            self.hp = 5
            self.spell = "Mortal Strike"
            self.weapon = Weapon(type: .axe)
            self.canATK = true
        case .Mage:
            self.name = "Mage"
            self.hp = 40
            self.spell = "Fire bolt"
            self.weapon = Weapon(type: .wand)
            self.canATK = true
        case .Rogue:
            self.name = "Rogue"
            self.hp = 50
            self.spell = "Embush"
            self.weapon = Weapon(type: .dagger)
            self.canATK = true
        case .Priest:
            self.name = "Priest"
            self.hp = 30
            self.spell = "Heal"
            self.weapon = Weapon(type: .staff)
            self.canATK = false
        case .Hunter:
            self.name = "Hunter"
            self.hp = 45
            self.spell = "Aimed shot"
            self.weapon = Weapon(type: .bow)
            self.canATK = true
        }
    }
    
    func isDead() -> Bool {
        if self.hp <= 0 {
            return true
        }
        return false
    }

}

