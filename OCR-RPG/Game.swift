//
//  Battle.swift
//  OCR-RPG
//
//  Created by Thibault on 11/09/2021.
//

import Foundation

class Game {
    
   
    var p1 = Team()
    var p2 = Team()
    var turnCount = 0
    var randomChest = [1,2,3,4]
   
    
    func displayTeam(team: Team) {
        for (index,item) in team.team.enumerated() {
            print("\(index+1) - \(item.name) : \(item.categories)")
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
       
    
        print("Here is the composition of the teams")
        displayTeam(team: p1)
        //print("\(p1.team[0].name) : \(p1.team[0].categories) - \(p1.team[1].name) : \(p1.team[1].categories) -  \(p1.team[2].name) : \(p1.team[2].categories) -   ")
        print("------")
        displayTeam(team: p2)
       //print("\(p2.team[0].name) : \(p2.team[0].categories) - \(p2.team[1].name) : \(p2.team[1].categories) -  \(p2.team[2].name) : \(p2.team[2].categories) -   ")
    }
    
    
    
    func battle() {
        
        while isGameOver() == false {
            //Turn Player 1
            turnCount += 1
            turn(team1: p1, team2: p2)
            var end = isGameOver()
            if end == true {
                break
            }
            //Turn Player 2
            turn(team1: p2, team2: p1)
            end = isGameOver()
            if end == true {
                break
            }
            
        }
        
    }
    

    func isGameOver() -> Bool {
        if p1.team.isEmpty || p2.team.isEmpty {
         
            print("GAME OVER")
            return true
        } else {
         
            return false
        }
        
    }
    
//
    func chestwillappear(player1: Character) {
        randomChest.shuffle()
        
        if randomChest[0] == 1 {
            player1.randomChest()
        }
    }
  
   
    func fight(player1: Character, player2: Character) {
        
        chestwillappear(player1: player1)
        let result = player1.weapon.atk - player2.weapon.atk
        if result > 0 || player2.canATK == false {
              print("\(player1.categories) : win this round")
              player2.hp = player2.hp - player1.weapon.atk
            if player2.isDead() == true  {
                print("Your character is dead")

            } else {
              print("\(player2.categories) You have \(player2.hp) HP left!")
            }
          

          } else if result < 0 {
              print("\(player2.categories) : win this round")
              player1.hp = player1.hp - player2.weapon.atk
            if player1.isDead() == true {
                print("Your character is dead")
                
            } else {
                print("\(player1.categories) : YOu have \(player1.hp) HP left!")
            }
              
          }
        
    }
    
    func heal(player: Character, team: Team){
        print("Select your character for healing")
        displayTeam(team: team)
        let selectedchartoheal = Int(readLine() ?? "0") ?? 0
        let chartoheal = team.team[selectedchartoheal - 1]
        team.team[selectedchartoheal - 1].hp = chartoheal.hp + player.weapon.atk
        print("Have healed \(chartoheal.categories)  - \(player.weapon.atk) - Current HP : \(chartoheal.hp)")
        
    }
    
    func turn(team1: Team, team2: Team){
        //Turn player 1
       let selectedchar = chooseCharacterForFight(team: team1)
        if selectedchar >= 0 && selectedchar < 3 {
            let char1 = team1.team[selectedchar]
           
            if char1.canATK == false {
             heal(player: char1, team: team1)
                
            } else if char1.canATK == true  {
                let selectedoppo = chooseCharacterForFight(team: team2)
                if selectedoppo >= 0 && selectedoppo < 3 {
                    let char2 = team2.team[selectedoppo]
                    fight(player1: char1, player2: char2)
                    if char1.isDead() == true {
                        team1.team.remove(at: selectedchar)
                    } else if char2.isDead() == true {
                        team2.team.remove(at: selectedoppo)
                    }
                } else {
                    print("Invalide Choice -- Try again")
                    let selectedoppo = chooseCharacterForFight(team: team2)
                }
             

            }
        } else {
            print("Invalide Choice -- Try again")
            let selectedchar = chooseCharacterForFight(team: team1)
            
        }
       
   
    }
    
    func chooseCharacterForFight(team: Team) -> Int{
        print("Select character:")
        displayTeam(team: team)
        let selectedchar = (Int(readLine() ?? "0") ?? 0) - 1
        
        return selectedchar
    }
}



