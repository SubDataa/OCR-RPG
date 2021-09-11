//
//  main.swift
//  OCR-RPG
//
//  Created by Thibault Ballof on 10/09/2021.
//

import Foundation

//func NewGame() {
//    
//    var char1 = Character(type: .warrior)
//    
//    print("Bienvenue dans OCR RPG")
//    print("Avant de vous rendre dans l'arene vous devez selectionner votre équipe.")
//    print("Entrez a pour le Guerrier, b pour le Mage, c pour le Voleur, d pour le Prêtre ou e pour le Chasseur.")
//
//    //first character
//    let selectedchar1 = readLine()
//        if selectedchar1 == "a" {
//            print("Vous avez selectionné le Guerrier")
//            char1 = Character(name: <#T##String#>, hp: <#T##Int#>, spell: <#T##String#>, type: .Warrior)
//        } else  if selectedchar1 == "b" {
//            print("Vous avez selectionné le Mage")
//            char1 = Mage()
//        } else if selectedchar1 == "c" {
//            print("Vous avez selectionné le Voleur")
//            char1 = Rogue()
//        } else if selectedchar1 == "d" {
//            print("Vous avez selectionné le Prêtre")
//            char1 = Priest()
//        } else if selectedchar1 == "e" {
//            print("Vous avez selectionné le Chasseur")
//            char1 = Hunter()
//        }
//        
//    // 2nd character
//    print("Il vous reste encore deux choix de personnage a faire .")
//    print("Entrez a pour le Guerrier, b pour le Mage, c pour le Voleur, d pour le Prêtre ou e pour le Chasseur.")
//    let selectedchar2 = readLine()
//        if selectedchar2 == "a" {
//            print("Vous avez selectionné le Guerrier")
//            var char2 = Warrior()
//        } else  if selectedchar2 == "b" {
//            print("Vous avez selectionné le Mage")
//            var char2 = Mage()
//        } else if selectedchar2 == "c" {
//            print("Vous avez selectionné le Voleur")
//            var char2 = Rogue()
//        } else if selectedchar2 == "d" {
//            print("Vous avez selectionné le Prêtre")
//            var char2 = Priest()
//        } else if selectedchar2 == "e" {
//            print("Vous avez selectionné le Chasseur")
//            var char2 = Hunter()
//        }
//    //Third character
//    print("Il vous reste encore un choix de personnage a faire.")
//    print("Entrez a pour le Guerrier, b pour le Mage, c pour le Voleur, d pour le Prêtre ou e pour le Chasseur.")
//    let selectedchar3 = readLine()
//        if selectedchar3 == "a" {
//            print("Vous avez selectionné le Guerrier")
//            var char3 = Warrior()
//        } else  if selectedchar3 == "b" {
//            print("Vous avez selectionné le Mage")
//            var char3 = Mage()
//        } else if selectedchar3 == "c" {
//            print("Vous avez selectionné le Voleur")
//            var char3 = Rogue()
//        } else if selectedchar3 == "d" {
//            print("Vous avez selectionné le Prêtre")
//            var char3 = Priest()
//        } else if selectedchar3 == "e" {
//            print("Vous avez selectionné le Chasseur")
//            var char3 = Hunter()
//        }
//
//    
//    print("Voici votre equipe \(char1)")
//}
//	
//    
func testAxe() {
    var axe = Axe()
    
    print("Votre \(axe.name) à attaque une de \(axe.Atk)")
}
//func testFight() {
//    var warrior = Warrior()
//    var mage = Mage()
//
//
//    print("Le \(mage.name) lance son sort \(mage.spell) (\(mage.weapon.Atk) dégat)")
//    print("Le \(warrior.name) lance son sort \(warrior.spell) (\(warrior.weapon.Atk) dégat)")
//    if mage.weapon.Atk > warrior.weapon.Atk {
//        warrior.hp = warrior.hp - (mage.weapon.Atk - warrior.weapon.Atk)
//        print("Guerrier : Vous perdez \(warrior.weapon.Atk - mage.weapon.Atk) PdV, il vous reste \(warrior.hp) PdV")
//    } else {
//        mage.hp =  mage.hp - (warrior.weapon.Atk - mage.weapon.Atk)
//        print("Mage : Vous perdez \(warrior.weapon.Atk - mage.weapon.Atk) PdV, il vous reste \(mage.hp) PdV")
//    }
//
//}

func startGame() {
    print("Bienvenue dans OCR RPG")
    print("Avant de vous rendre dans l'arene vous devez selectionner votre équipe.")
    Team().createTeam()
}

startGame()
