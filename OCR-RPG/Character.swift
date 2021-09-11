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

struct Character {
    private(set) var name: String
    var hp: Int
    var spell: String
    var type: CharacterType
    
    init(type: CharacterType) {
        switch type {
        case .Warrior:
            self.name = "Warrior"
            self.hp = 60
            self.spell = "Coup d'hache"
        case .Mage:
            self.name = "Mage"
            self.hp = 40
            self.spell = "Fire bolt"
        case .Rogue:
            self.name = "Rogue"
            self.hp = 50
            self.spell = "Embush"
        case .Priest:
            self.name = "Priest"
            self.hp = 30
            self.spell = "Heal"
        case .Hunter:
            self.name = "Hunter"
            self.hp = 45
            self.spell = "Aimed shot"
        }
    }
}

//class Warrior {
//    var name = "Guerrier"
//    var hp = 60
//    var weapon = Axe()
//    var spell = "Coup d'hache"
//}
//
//class Mage {
//    var name = "Mage"
//    var hp = 40
//    var weapon = Wand()
//    var spell = "Boule de feu"
//}
//
//
//class Rogue {
//    var name = "Voleur"
//    var hp = 50
//    var weapon = Dagger()
//    var spell = "Attaque empoisonnée"
//}
//
//
//class Priest {
//    var name = "Prêtre"
//    var hp = 30
//    var weapon = Staff()
//    var spell = "Soin"
//}
//
//class Hunter {
//    var name = "Chasseur"
//    var hp = 45
//    var weapon = Bow()
//    var spell = "Tire visé"
//}
//
