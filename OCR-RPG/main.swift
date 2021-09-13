//
//  main.swift
//  OCR-RPG
//
//  Created by Thibault Ballof on 10/09/2021.
//

import Foundation


func startGame() {
    print("Welcome in OCR RPG")
    print("Avant de vous rendre dans l'arene vous devez selectionner votre équipe.")
    let game = Game()
    game.createTeams()
    game.battle()
    
}

startGame()
