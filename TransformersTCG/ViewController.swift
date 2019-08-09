//
//  ViewController.swift
//  TransformersTCG
//
//  Created by Andrei Freeman on 8/8/19.
//  Copyright © 2019 LordAndrei dot com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var card1: UIView!
  @IBOutlet var card2: UIView!
  @IBOutlet var card3: UIView!
  @IBOutlet var card4: UIView!

  let nib = UINib(nibName: "BattleCardView", bundle: nil)

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    let objects1 = nib.instantiate(withOwner: nil, options: nil)
    let object1 = objects1.first as! BattleCardView
    object1.frame = card1.frame
    card1 = object1

    let objects2 = nib.instantiate(withOwner: nil, options: nil)
    let object2 = objects2.first as! BattleCardView
    object2.frame = card2.frame
    card2 = object2

    let objects3 = nib.instantiate(withOwner: nil, options: nil)
    let object3 = objects3.first as! BattleCardView
    object3.frame = card3.frame
    card3 = object3

    let objects4 = nib.instantiate(withOwner: nil, options: nil)
    let object4 = objects4.first as! BattleCardView
    object4.frame = card4.frame
    card4 = object4

    object1.setBattleCard(card: u033)
    object2.setBattleCard(card: c034)
    object3.setBattleCard(card: c020)
    object4.setBattleCard(card: c060)

    view.addSubview(card1)
    view.addSubview(card2)
    view.addSubview(card3)
    view.addSubview(card4)

  }


}

