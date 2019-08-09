//
//  BattlePointView.swift
//  TransformersTCG
//
//  Created by Andrei Freeman on 8/8/19.
//  Copyright © 2019 LordAndrei dot com. All rights reserved.
//

import UIKit

class BattlePointView: UIView {
  var card: BattleCard?
  
  func setBattleCard(card: BattleCard) {
    self.card = card
    self.setNeedsDisplay()
  }
    
  // Only override draw() if you perform custom drawing.
  // An empty implementation adversely affects performance during animation.
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    
    guard card != nil else {
      return
    }
      // Drawing code
  }


}
