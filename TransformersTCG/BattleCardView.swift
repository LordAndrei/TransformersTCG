//
//  BattleCardView.swift
//  TransformersTCG
//
//  Created by Andrei Freeman on 8/8/19.
//  Copyright © 2019 LordAndrei dot com. All rights reserved.
//

import UIKit

class BattleCardView: UIView {

  @IBOutlet var battlePointView: BattlePointView!
  @IBOutlet var labelBackground: UIView!
  @IBOutlet var name: UILabel!
  
  var battleCard: BattleCard!
  
  override func awakeFromNib() {
    print("BattleCardView awakeFromNib")
    self.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    self.layer.borderWidth = 1.0
    self.layer.cornerRadius = 5.0
  }
  
  func setBattleCard(card: BattleCard) {
    battleCard = card
    battlePointView.setBattleCard(card: card)
    name.text = card.name.uppercased()
    if card.cardClass == BattleCardClass.action {
      labelBackground.backgroundColor = #colorLiteral(red: 0.8465057791, green: 0.8465057791, blue: 0.8465057791, alpha: 1)
      name.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    } else {
      labelBackground.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
      name.textColor = #colorLiteral(red: 0.8465057791, green: 0.8465057791, blue: 0.8465057791, alpha: 1)
    }
  }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
