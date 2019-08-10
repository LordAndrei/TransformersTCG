//
//  CharacterCardView.swift
//  TransformersTCG
//
//  Created by Aiden Freeman on 8/9/19.
//  Copyright © 2019 LordAndrei dot com. All rights reserved.
//

import UIKit

class CharacterCardView: UIView {

    @IBOutlet var name: UILabel!
    @IBOutlet var discription: UILabel!
    @IBOutlet var mode: UILabel!
    @IBOutlet var otherMode: UILabel!
    @IBOutlet var attackPower: UILabel!
    @IBOutlet var health: UILabel!
    @IBOutlet var defencePower: UILabel!
    
    var characterCard: CharacterCard!
    var activeMode: CharacterModes = .altMode
    
    override func awakeFromNib() {
      print("CharacterCardView awakeFromNib")
      self.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
      self.layer.borderWidth = 1.0
      self.layer.cornerRadius = 5.0
    }
    
    func setCharacterCard(card: CharacterCard) {
      characterCard = card
      name.text = card.name.uppercased()
      discription.text = card.description.uppercased()
        updateUI()
    }
    func updateUI() {
        mode.text = activeMode.rawValue
        attackPower.text = "\(characterCard.stats[activeMode]!.attack)"
        health.text = "\(characterCard.stats[activeMode]!.health)"
        defencePower.text = "\(characterCard.stats[activeMode]!.defence)"
    }
    
    
    
    
    
    
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
