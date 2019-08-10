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
    
    let width = rect.width * 0.95
    let height = (rect.height / 3.0) * 0.90
    
    switch card!.battlePointType {
    case .black:
      UIColor.black.setFill()
    case .blue:
      #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setFill()
    case .green:
      UIColor.green.setFill()
    case .orange:
      UIColor.orange.setFill()
    case .white:
      UIColor.white.setFill()
    default:
      return
    }
    var y: CGFloat = 0.0
    for count in 1...card!.battlePointCount {
        y += (rect.height / 3.0) * 0.05
        if count > 1 {
            y += (rect.height / 3.0) * 0.95
        }
        let drawRect = CGRect(x: rect.width * 0.025, y: y, width: width, height: height)
        let bezierRect = UIBezierPath(roundedRect: drawRect, cornerRadius: 3.0)
        bezierRect.fill()
    }
    

      // Drawing code
  }


}
