//
//  Battle.swift
//  OCR-RPG
//
//  Created by Thibault on 11/09/2021.
//

import Foundation

class Game {
    
    var isOver = false
    var p1 = Team()
    var p2 = Team()
    
    func displayTeam1() {
        for (index,item) in p1.team.enumerated() {
            print(index+1,item.name)
        }
       
    }
    func displayTeam2() {
        for (index,item) in p2.team.enumerated() {
            print(index+1,item.name)
        }
       
    }
    
    func createTeams() {
        
        // Create team 1
        print("Player 1 : Choose your characters")
        
        p1.fillTeam()
        
        //Create team 2
        print("Player 2 : Choose your characters")
        
        p2.fillTeam()
        
        // Show team
       
    
        print("Voici la composition des équipes")
        displayTeam1()
        print("------")
        displayTeam2()
    }
    
    
    
    func battle() {
        
        while isOver == false {
            //Turn Player 1
            turn(player1: p1, player2: p2)
            isGameOver()
            //Turn Player 2
            turn(player1: p2, player2: p1)
            isGameOver()
        }
        
    }
    

    func isGameOver() {
        if p1.team.isEmpty || p2.team.isEmpty {
          isOver = true
            print("GAME OVER")
        } else {
            isOver = false
        }
        
    }
    


  
   
    func fight(player1: Character, player2: Character) {
        
        let result = player1.weapon.atk - player2.weapon.atk
        if result > 0  {
              print("Player 1 win this round")
              player2.hp = player2.hp - player1.weapon.atk
            if player2.isDead() == true  {
                print("Your character is dead")
                isGameOver()
            } else {
              print("Player 2 : Il vous reste \(player2.hp) PdV")
            }
          

          } else if result < 0 {
              print("Player 2 win this round")
              player1.hp = player1.hp - player2.weapon.atk
            if player1.isDead() == true {
                print("Your character is dead")
                
            } else {
              print("Player 1 : Il vous reste \(player1.hp) PdV")
            }
              
          }
        
    }
    
    func heal(player: Character){
        print("Select your character for healing")
        displayTeam1()
        let selectedchartoheal = Int(readLine() ?? "0") ?? 0
        let chartoheal = p1.team[selectedchartoheal - 1]
        p1.team[selectedchartoheal - 1].hp = chartoheal.hp + player.weapon.atk
        print("Have healed \(chartoheal.name)  - \(player.weapon.atk) - Current HP : \(chartoheal.hp)")
        
    }
    
    func turn(player1: Team, player2: Team){
        //Turn player 1
       print("Select your character for fight")
       displayTeam1()
       let selectedchar = (Int(readLine() ?? "0") ?? 0) - 1
       
       var char1 = player1.team[selectedchar]
      
       if char1.canATK == false {
          heal(player: char1)
           
       } else if char1.canATK == true  {
           
           print("Select your opponent")
           displayTeam2()
           let selectedoppo = (Int(readLine() ?? "0") ?? 0) - 1
           var char2 = player2.team[selectedoppo]
           fight(player1: char1, player2: char2)
           if char1.isDead() == true {
               player1.team.remove(at: selectedchar)
           } else if char2.isDead() == true {
               player2.team.remove(at: selectedoppo)
           }

       }
    }
}



