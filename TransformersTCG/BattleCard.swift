//
//  BattleCard.swift
//  TransformersTCG
//
//  Created by Andrei Freeman on 8/8/19.
//  Copyright © 2019 LordAndrei dot com. All rights reserved.
//

import Foundation
import UIKit

enum BattlePointType {
  case orange
  case blue
  case white
  case green
  case black
  case none
}

enum BattleCardClass {
  case action
  case upgradeWeapon
  case upgradeUtility
  case upgradeArmor
}

struct BattleCard {
  var name: String
  var image: UIImage?
  var battlePointType: BattlePointType
  var battlePointCount: Int
  var cardClass: BattleCardClass
  var attackBuff: Int
  var defenceBuff: Int
}

let c004 = BattleCard(name: "Armored Plating", image: nil, battlePointType: .blue, battlePointCount: 1, cardClass: .upgradeArmor, attackBuff: 0, defenceBuff: 1)
let c020 = BattleCard(name: "Data Pad", image: nil, battlePointType: .white, battlePointCount: 1, cardClass: .upgradeUtility, attackBuff: 0, defenceBuff: 0)
let c030 = BattleCard(name: "Flamethrower", image: nil, battlePointType: .orange, battlePointCount: 1, cardClass: .upgradeWeapon, attackBuff: 0, defenceBuff: 0)
let c034 = BattleCard(name: "Handheld Blaster", image: nil, battlePointType: .blue, battlePointCount: 2, cardClass: .upgradeWeapon, attackBuff: 0, defenceBuff: 0)
let c038 = BattleCard(name: "Improvised Shield", image: nil, battlePointType: .orange, battlePointCount: 2, cardClass: .upgradeArmor, attackBuff: 0, defenceBuff: 0)
let c039 = BattleCard(name: "Incoming Transmissions", image: nil, battlePointType: .orange, battlePointCount: 1, cardClass: .action, attackBuff: 0, defenceBuff: 0)
let c040 = BattleCard(name: "Inspiring Leadership", image: nil, battlePointType: .blue, battlePointCount: 1, cardClass: .action, attackBuff: 0, defenceBuff: 0)
let c043 = BattleCard(name: "Leap into Battle", image: nil, battlePointType: .blue, battlePointCount: 1, cardClass: .action, attackBuff: 0, defenceBuff: 0)
let c048 = BattleCard(name: "New Designs", image: nil, battlePointType: .orange, battlePointCount: 1, cardClass: .action, attackBuff: 0, defenceBuff: 0)
let c053 = BattleCard(name: "Piercing Blaster", image: nil, battlePointType: .white, battlePointCount: 1, cardClass: .upgradeWeapon, attackBuff: 0, defenceBuff: 0)
let c056 = BattleCard(name: "Primary Laser", image: nil, battlePointType: .blue, battlePointCount: 1, cardClass: .upgradeWeapon, attackBuff: 2, defenceBuff: 0)
let c059 = BattleCard(name: "Rapid Conversion", image: nil, battlePointType: .white, battlePointCount: 1, cardClass: .action, attackBuff: 0, defenceBuff: 0)
let c060 = BattleCard(name: "Ready for Action", image: nil, battlePointType: .none, battlePointCount: 0, cardClass: .action, attackBuff: 0, defenceBuff: 0)
let c062 = BattleCard(name: "Repair Bay", image: nil, battlePointType: .orange, battlePointCount: 1, cardClass: .action, attackBuff: 0, defenceBuff: 0)
let u012 = BattleCard(name: "Debilitating Crystal", image: nil, battlePointType: .white, battlePointCount: 1, cardClass: .upgradeUtility, attackBuff: 0, defenceBuff: 0)
let u033 = BattleCard(name: "Grenade Launcher", image: nil, battlePointType: .orange, battlePointCount: 1, cardClass: .upgradeWeapon, attackBuff: 4, defenceBuff: 0)
let u054 = BattleCard(name: "Plasma Burst", image: nil, battlePointType: .none, battlePointCount: 0, cardClass: .action, attackBuff: 0, defenceBuff: 0)
let u057 = BattleCard(name: "Ramming Speed", image: nil, battlePointType: .orange, battlePointCount: 1, cardClass: .action, attackBuff: 0, defenceBuff: 0)
let u058 = BattleCard(name: "Rapid Ascent", image: nil, battlePointType: .orange, battlePointCount: 1, cardClass: .upgradeArmor, attackBuff: 0, defenceBuff: 1)
let r076 = BattleCard(name: "Team-up Tactics", image: nil, battlePointType: .blue, battlePointCount: 1, cardClass: .action, attackBuff: 0, defenceBuff: 0)

let battleCards = [c004, c020, c030, c034, c038, c039, c040, c043, c048, c053, c056, c059, c060, c062, u012, u033, u054, u057, u058, r076]

let battlePack1S = [c004, c020, c030, c034, c038,
                  c039, c040, c043, c048, c053,
                  c056, c059, c060, c062, u012,
                  u033, u054, u057, u058, r076,
                  c004, c020, c030, c034, c038,
                  c039, c040, c043, c048, c053,
                  c056, c059, c060, c062, u012,
                  u033, u054, u057, u058, r076]
