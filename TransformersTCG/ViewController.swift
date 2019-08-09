//
//  ViewController.swift
//  TransformersTCG
//
//  Created by Andrei Freeman on 8/8/19.
//  Copyright © 2019 LordAndrei dot com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var card1: BattleCardView!
  @IBOutlet var card2: BattleCardView!
  
  let nib = UINib(nibName: "BattleCard", bundle: nil)

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    let objects1 = nib.instantiate(withOwner: nil, options: nil)
    let objects2 = nib.instantiate(withOwner: nil, options: nil)
    let object1 = objects1.first as! BattleCardView
    let object2 = objects2.first as! BattleCardView
    object1.frame = card1.frame
    object2.frame = card2.frame
    card1 = object1
    card2 = object2
    
    view.addSubview(card1)
    view.addSubview(card2)

    card1.setBattleCard(card: u057)
    card2.setBattleCard(card: u033)
  }


}

