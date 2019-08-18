//
//  CharacterCard.swift
//  TransformersTCG
//
//  Created by Andrei Freeman on 8/8/19.
//  Copyright © 2019 LordAndrei dot com. All rights reserved.
//

import Foundation
import UIKit


enum CharacterCardType: String {
    case combined = "Combined"
    case titan = "Titan"
    case classic = "Regular"
    case cassette = "Cassette"
    case microBots = "Mini"
    case combiners = "Combiner"
}




enum CharacterModes: String {
  case botMode = "Bot Mode"
  case altMode = "Alt Mode"
  case combinerMode = "Combiner Mode"
}

enum CharacterTeam {
  case autobot
  case decepticon
}

struct CharacterCard {
  var name: String
  var description: String
  var image: UIImage?
  var modes: [CharacterModes]
  var stats: [CharacterModes: CharacterStats]
  var classes: [CharacterModes: [String]]
  var starCount: Int
  var team: CharacterTeam
  var type: CharacterCardType
    
}

struct CharacterStats {
  var attack: Int
  var health: Int
  var defence: Int
}

let rtt01 = CharacterCard(name: "Bumblebee",
                          description: "Brave Warrior",
                          image: nil,
                          modes: [.botMode, .altMode],
                          stats: [.botMode: CharacterStats(attack: 4, health: 9, defence: 2),
                                  .altMode: CharacterStats(attack: 3, health: 9, defence: 2)],
                          classes: [.botMode: ["Leader", "Melee"],
                                    .altMode: ["Leader", "Car", "Melee"]],
                          starCount: 6,
                          team: .autobot,
                          type: .classic)

let rtt02 = CharacterCard(name: "Ironhide",
                          description: "Veteran Autobot",
                          image: nil,
                          modes: [.botMode, .altMode],
                          stats: [.botMode: CharacterStats(attack: 4, health: 7, defence: 2),
                                  .altMode: CharacterStats(attack: 3, health: 7, defence: 3)],
                          classes: [.botMode: ["Ranged"],
                                    .altMode: ["Truck", "Melee"]],
                          starCount: 6,
                          team: .autobot,
                          type: .classic)

let rtt03 = CharacterCard(name: "Optimus Prime",
                          description: "Autobot Leader",
                          image: nil,
                          modes: [.botMode, .altMode],
                          stats: [.botMode: CharacterStats(attack: 3, health: 10, defence: 2),
                                  .altMode: CharacterStats(attack: 3, health: 10, defence: 2)],
                          classes: [.botMode: ["Leader", "Ranged"],
                                    .altMode: ["Leader", "Truck", "Ranged"]],
                          starCount: 7,
                          team: .autobot,
                          type: .classic)

let rtt04 = CharacterCard(name: "Red Alert",
                          description: "Security Chief",
                          image: nil,
                          modes: [.botMode, .altMode],
                          stats: [.botMode: CharacterStats(attack: 5, health: 10, defence: 0),
                                  .altMode: CharacterStats(attack: 3, health: 10, defence: 2)],
                          classes: [.botMode: ["Ranged"],
                                    .altMode: ["Car", "Ranged"]],
                          starCount: 6,
                          team: .autobot,
                          type: .classic)

let characters = [rtt01, rtt02, rtt03, rtt04]

extension CharacterCard: Hashable {
    static func == (lhs: CharacterCard, rhs: CharacterCard) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        
    }
    
}
