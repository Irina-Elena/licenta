//
//  MenuView.swift
//  AnotherTry
//
//  Created by Irina Cercel on 05/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class MenuView: UIViewController, Storyboarded {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var arButton: UIButton!
    @IBOutlet weak var almanacButton: UIButton!
    @IBOutlet weak var gamesButton: UIButton!
    @IBOutlet weak var quitButton: UIButton!
    
    var menuVM: MenuViewModel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "wallpaper")!)
        
        designLabel(label: welcomeLabel)
        designButton(button: arButton)
        designButton(button: almanacButton)
        designButton(button: gamesButton)
        designButton(button: quitButton)
    }
    
    func designLabel(label: UILabel) {
        label.textColor = UIColor(red: 95/255, green: 200/255, blue: 185/255, alpha: 1)
        label.layer.shadowColor = UIColor(red: 200/255, green: 185/255, blue: 220/255, alpha: 0.3).cgColor
        label.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        label.layer.shadowOpacity = 1.0
        label.layer.shadowRadius = 3.0
        label.layer.masksToBounds = false
    }
    
    func designButton(button: UIButton) {
        //button color
        button.setTitleColor(UIColor(red: 200/255, green: 185/255, blue: 220/255, alpha: 1), for: .normal)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = button.bounds
        gradientLayer.colors = [UIColor(red: 95/255, green: 0/255, blue: 150/255, alpha: 1).cgColor, UIColor(red: 200/255, green: 185/255, blue: 220/255, alpha: 0.7).cgColor]
        button.layer.insertSublayer(gradientLayer, at: 0)
        
        //button dimension
        gradientLayer.cornerRadius = 10
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8).cgColor
        
        //button shadow
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8).cgColor
        button.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
    }
    
    @IBAction func arExperienceButtonPressed(sender: Any) {
        menuVM.goToARExperience()
    }
    
    @IBAction func almanacButtonPressed(sender: Any) {
        menuVM.goToAlmanac()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
