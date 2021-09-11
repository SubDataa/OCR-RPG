//
//  Weapon.swift
//  OCR-RPG
//
//  Created by Thibault Ballof on 10/09/2021.
//

import Foundation
enum WeaponType {
    case axe
    case wand
    case dagger
    case staff
    case bow
}

struct Weapon {
    var name: String
    var atk: Int
    var type: WeaponType
    
    init(type: WeaponType) {
        self.type = type
        switch type {
        case .axe:
            self.name = "Axe"
            self.atk = 6
        case .wand:
            self.name = "Wand"
            self.atk = 9
        case .dagger:
            self.name = "Dagger"
            self.atk = 8
        case .staff:
            self.name = "Staff"
            self.atk = 7
        case .bow:
            self.name = "Bow"
            self.atk = 7
        
        }
    }

}
