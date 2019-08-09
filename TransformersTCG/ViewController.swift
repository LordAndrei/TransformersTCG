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
  
  let nib = UINib(nibName: "CharacterCardView", bundle: nil)

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    let objects1 = nib.instantiate(withOwner: nil, options: nil)
    let object1 = objects1.first as! CharacterCardView
    object1.frame = card1.frame
    card1 = object1
    
    view.addSubview(card1)

    object1.setCharacterCard(card: rtt03)
  }


}

