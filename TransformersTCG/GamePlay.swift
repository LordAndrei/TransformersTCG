//
//  GamePlay.swift
//  TransformersTCG
//
//  Created by Aiden Freeman on 8/13/19.
//  Copyright © 2019 LordAndrei dot com. All rights reserved.
//

import Foundation

// MARK: - Classes
class PlayerCharacterCard {
    var card: CharacterCard!
    var isTapped: Bool = false
    var damageCounters: Int = 0
    var currentMode: CharacterModes = .altMode
}

extension PlayerCharacterCard: Hashable {
    static func == (lhs: PlayerCharacterCard, rhs: PlayerCharacterCard) -> Bool {
        return lhs.card.name == rhs.card.name
    }
    
    func hash(into hasher: inout Hasher) {
        
    }
    
    
}

class Player {
    var characterCards:Array<PlayerCharacterCard> = []
}

class GamePlay {
    var gamePlayers:[Player] = []
    
    func dealCharacterCards() {
        for playerIndex in 1...2 {
            // Make a player (has bucket of player character cards)
            let aPlayer = Player()
            print("Dealing Cards for Player: \(playerIndex)")
            var setOfCharacterCards: Set<CharacterCard> = []
            while setOfCharacterCards.count < 2 {
                let characterCardIndex = Int.random(in: 0...3)
                let card = characters[characterCardIndex]
                setOfCharacterCards.insert(card)
            }
            print("Cards: ")
            var starCountTotal = 0
            for card in setOfCharacterCards {
                // make a player characterCard
                let aPlayerCharacterCard = PlayerCharacterCard()
                // add it to the player's bucket of player playing Cards
              aPlayer.characterCards.append(aPlayerCharacterCard)
                
              print("Name: \(card.name)")
                starCountTotal += card.starCount
            }
            print("Total Star Count: \(starCountTotal)")
            // Add the player to the players
            gamePlayers.append(aPlayer)
        }
        print("GamePlayers: \(gamePlayers)")
    }
    
    func dealBattleCards() {
            
    }
    
    func dealPlayerCards() {
        dealCharacterCards()
        dealBattleCards()
    }
}

// MARK: - Variables

// MARK: - Functions

