//
//  PlanetInfoCell.swift
//  AnotherTry
//
//  Created by Irina Cercel on 23/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class PlanetInfoCell: UITableViewCell {
    @IBOutlet weak var planetInfoLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setShadow()
        // Initialization code
    }
    
    func setShadow() {
        planetInfoLabel.layer.shadowColor = UIColor.black.cgColor
        planetInfoLabel.layer.shadowRadius = 3.0
        planetInfoLabel.layer.shadowOpacity = 1.0
        planetInfoLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        planetInfoLabel.layer.masksToBounds = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
