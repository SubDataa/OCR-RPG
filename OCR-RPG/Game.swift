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
    
    
    
    func createTeams() {
        
        // Create team 1
        print("Player 1 : Choose your characters")
        
        p1.fillTeam()
        
        //Create team 2
        print("Player 2 : Choose your characters")
        
        p2.fillTeam()
        
        // Show team
        print("Voici la composition des équipes")
        print("Player 1 : \(p1.team[0].name), \(p1.team[1].name), \(p1.team[2].name)")
        print("Player 2 : \(p2.team[0].name), \(p2.team[1].name), \(p2.team[2].name)")
    }
    
    func battle() {
        
        while isOver == false {
            
             //Turn player 1
            print("Player 1 : Select your character for fight")
            print(" 1 - \(p1.team[0].name) 2 - \(p1.team[1].name) 3 - \(p1.team[2].name) ")
            let selectedchar = Int(readLine() ?? "0") ?? 0
            
            var char1 = p1.team[selectedchar - 1]
           
            if char1.canATK == false {
                print("Player 1 :Select your character for healing")
                print(" 1 - \(p1.team[0].name) 2 - \(p1.team[1].name) 3 - \(p1.team[2].name) ")
                let selectedchartoheal = Int(readLine() ?? "0") ?? 0
                let chartoheal = p1.team[selectedchartoheal - 1]
                p1.team[selectedchartoheal - 1].hp = chartoheal.hp + char1.weapon.atk
                print("Have healed \(chartoheal.name)  - \(char1.weapon.atk) - Current HP : \(chartoheal.hp)")
                
                
            } else if char1.canATK == true  {
                
                print("Select your opponent")
                print(" 1 - \(p2.team[0].name) 2 - \(p2.team[1].name) 3 - \(p2.team[2].name) ")
                let selectedoppo = Int(readLine() ?? "0") ?? 0
                var char2 = p2.team[selectedoppo - 1]
                fight(player1: char1, player2: char2)
            }
            
            //Turn player 2
           print("Player 2 : Select your character for fight")
           print(" 1 - \(p2.team[0].name) 2 - \(p2.team[1].name) 3 - \(p2.team[2].name) ")
           let selectedchar2 = Int(readLine() ?? "0") ?? 0
           
           var char2 = p2.team[selectedchar - 1]
          
           if char2.canATK == false {
               print("Player 1 :Select your character for healing")
               print(" 1 - \(p2.team[0].name) 2 - \(p2.team[1].name) 3 - \(p2.team[2].name) ")
               let selectedchartoheal = Int(readLine() ?? "0") ?? 0
               let chartoheal = p2.team[selectedchartoheal - 1]
               p2.team[selectedchartoheal - 1].hp = chartoheal.hp + char2.weapon.atk
               print("Have healed \(chartoheal.name)  - \(char2.weapon.atk) - Current HP : \(chartoheal.hp)")
               
               
           } else if char2.canATK == true  {
               
               print("Select your opponent")
               print(" 1 - \(p1.team[0].name) 2 - \(p1.team[1].name) 3 - \(p1.team[2].name) ")
               let selectedoppo = Int(readLine() ?? "0") ?? 0
               var char1 = p1.team[selectedoppo - 1]
               fight(player1: char2, player2: char1)
           }
            
            isGameOver()
   
        }
    }
    

    func isGameOver() {
        if p1.team.isEmpty || p2.team.isEmpty {
          isOver = true
        } else {
            isOver = false
        }
        
    }
    
    func checkStatus(player1: Character, player2: Character) {
        if player1.hp == 0 {
            
        }
    }
   
    func fight(player1: Character, player2: Character) {
        
        let result = player1.weapon.atk - player2.weapon.atk
        if result > 0  {
              print("Player 1 win this round")
              player2.hp = player2.hp - player1.weapon.atk
              print("Player 2 : Il vous reste \(player2.hp) PdV")
            
          

          } else if result < 0 {
              print("Player 2 win this round")
              player1.hp = player1.hp - player2.weapon.atk
              print("Player 1 : Il vous reste \(player1.hp) PdV")
            
              
          }
        
    }
    
    
}


