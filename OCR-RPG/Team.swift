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
        print("Choose your character")
        print("Entrez a pour le Guerrier, b pour le Mage, c pour le Voleur, d pour le Prêtre ou e pour le Chasseur.")
        let selectedchar = readLine()
        
            if selectedchar == "a" {
                print("Vous avez selectionné le Guerrier")
                team.append(Character(type: .Warrior))
            } else  if selectedchar == "b" {
                print("Vous avez selectionné le Mage")
                team.append(Character(type: .Mage))
            } else if selectedchar == "c" {
                print("Vous avez selectionné le Voleur")
                team.append(Character(type: .Rogue))
            } else if selectedchar == "d" {
                print("Vous avez selectionné le Prêtre")
                team.append(Character(type: .Priest))
            } else if selectedchar == "e" {
                print("Vous avez selectionné le Chasseur")
                team.append(Character(type: .Hunter))
            }

    }
}
