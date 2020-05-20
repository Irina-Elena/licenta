//
//  CollectionViewCell.swift
//  AnotherTry
//
//  Created by Irina Cercel on 20/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet var planetImage: UIImageView!
    @IBOutlet var planetNameLabel: UILabel!
    
    var planetCellVM: PlanetCellViewModel! {
        didSet {
            planetNameLabel.text = planetCellVM.planet.name
            planetNameLabel.layer.shadowColor = UIColor.black.cgColor
            planetNameLabel.layer.shadowRadius = 3.0
            planetNameLabel.layer.shadowOpacity = 1.0
            planetNameLabel.layer.shadowOffset = CGSize(width: 4, height: 4)
            planetNameLabel.layer.masksToBounds = false
            let img: UIImage = UIImage(named: planetCellVM.planet.name)!
            planetImage.image = img
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.red
        planetImage.frame = self.frame
        planetImage.contentMode = .scaleAspectFill
        shadowDecorate()
        // Initialization code
    }
    
    func shadowDecorate() {
        let radius: CGFloat = 10
        contentView.layer.cornerRadius = radius
        contentView.layer.masksToBounds = true
        
        layer.shadowColor = UIColor.white.cgColor
        layer.shadowOffset = CGSize(width: 1.0, height: 2.0)
        layer.shadowRadius = 6
        layer.shadowOpacity = 0.5
        layer.masksToBounds = false
//        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: radius).cgPath
        layer.cornerRadius = radius
    }

}
