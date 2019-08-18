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
    var characterCards:Set<PlayerCharacterCard> = []
}

class GamePlay {
    var players:[Player] = []
    
    func dealCharacterCards() {
        for playerIndex in 1...2 {
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
                print("Name: \(card.name)")
                starCountTotal += card.starCount
            }
            print("Total Star Count: \(starCountTotal)")
        }
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

