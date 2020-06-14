//
//  PlanetProfileCell.swift
//  AnotherTry
//
//  Created by Irina Cercel on 24/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class PlanetProfileCell: UITableViewCell {
    @IBOutlet var planetPropertyLabel: UILabel!
    @IBOutlet var planetPropertyValue: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setShadow(label: planetPropertyLabel)
        setShadow(label: planetPropertyValue)
    }
    
    func setShadow(label: UILabel) {
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowRadius = 3.0
        label.layer.shadowOpacity = 1.0
        label.layer.shadowOffset = CGSize(width: 2, height: 2)
        label.layer.masksToBounds = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
