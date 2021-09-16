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
    var turnCount = 1
    var randomChest = [1,2,3,4]
   
//Print character of team
    func displayTeam(team: Team) {
        for (index,item) in team.team.enumerated() {
            print("\(index+1) - \(item.name) : \(item.categories)")
        }
       
    }
    
// Create teams
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
  
        print("------")
        displayTeam(team: p2)

    }
    
    
// game continues as long as a team's characters are alive
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
    
// Checking that all characters are alive
    func isGameOver() -> Bool {
        if p1.team.isEmpty || p2.team.isEmpty {
            print("GAME OVER")
            if !p1.team.isEmpty {
                showStatistic(team: p1)
            } else if !p2.team.isEmpty {
                showStatistic(team: p2)
            }

            return true
        } else {
         
            return false
        }
        
    }
    
//Probability that the chest will appear
    func chestwillappear(player1: Character) {
        randomChest.shuffle()
        
        if randomChest[0] == 1 {
            player1.randomChest()
        }
    }
  
//Combat between character 1 and character 2
    func fight(player1: Character, player2: Character) {
        
        chestwillappear(player1: player1)
        let result = player1.weapon.atk - player2.weapon.atk
        if result > 0 || player2.canATK == false {
            print("\(player1.name) attacks \(player2.name) with \(player1.spell) (\(player1.weapon.atk) ATK)")
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
                
            }  else {
                print("\(player1.categories) : You have \(player1.hp) HP left!")
            }
              
          } else if result == 0 {
            print("Draw")
            
        }
        
    }
//  Heals a friendly character
    func heal(player: Character, team: Team){
        let selectedchartoheal = selectIndexOfCharacter(team: team)
        let chartoheal = team.team[selectedchartoheal]
        team.team[selectedchartoheal].hp = chartoheal.hp + player.weapon.atk
        print("Have healed \(chartoheal.categories)  - \(player.weapon.atk) - Current HP : \(chartoheal.hp)")
        
    }
 // Game turn of the game
    func turn(team1: Team, team2: Team){
       
       let selectedchar = selectIndexOfCharacter(team: team1)
        if selectedchar >= 0 && selectedchar < 3 {
            let char1 = team1.team[selectedchar]
           
            if char1.canATK == false {
             heal(player: char1, team: team1)
                
            } else if char1.canATK == true  {
                let selectedoppo = selectIndexOfCharacter(team: team2)
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
                    let selectedoppo = selectIndexOfCharacter(team: team2)
                }
             

            }
        } else {
            print("Invalide Choice -- Try again")
            let selectedchar = selectIndexOfCharacter(team: team1)
            
        }
       
   
    }
// input entered by user converted to selected character
    func selectIndexOfCharacter(team: Team) -> Int {
        print("Select character:")
        displayTeam(team: team)
        let choice = readLine() // String?
        if let choice = choice { // String
            let choiceToInt = Int(choice) // Int?
            if let choiceToInt = choiceToInt {
                let selectedchar = choiceToInt - 1
                return selectedchar
            }
        }
        return selectIndexOfCharacter(team: team)
    }
    
    
    
//Statistics display
    func showStatistic(team: Team) {
        print("Statistics of the game : ")
        print("Turn count : \(turnCount)")
        for team in team.team.enumerated() {
            print("\(team.element.name) : \(team.element.categories) - \(team.element.hp) HP")
            newGame()
        }
        
    }
// Start new game
    func newGame() {
        print("Press 1 to start a new game - 2 for quit")
        let str = readLine()
        if str == "1" {
            startGame()
        } else if str == "2" {
            print("Thanks for playing")
        } else {
            print("Invalide Choice -- Try again")
            newGame()
        }
    }
    
}


