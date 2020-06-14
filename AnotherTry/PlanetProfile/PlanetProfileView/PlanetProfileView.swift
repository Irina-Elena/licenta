//
//  PlanetProfileView.swift
//  AnotherTry
//
//  Created by Irina Cercel on 24/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class PlanetProfileView: UIViewController, Storyboarded {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var profileLabel: UILabel!
    
    var planetProfileVM: PlanetProfileViewModel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackground()
        setTitleLabel()
        setTableView()
        // Do any additional setup after loading the view.
    }
    
    func setTitleLabel() {
        let attributedString = NSMutableAttributedString.init(string: "Profile")
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
            NSRange.init(location: 0, length: attributedString.length));
        profileLabel.attributedText = attributedString
    }
    
    func setTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "PlanetProfileCell", bundle: nil), forCellReuseIdentifier: "PlanetProfileCell")
        tableView.backgroundColor = UIColor.clear
    }
    
    func setBackground() {
        overrideUserInterfaceStyle = .dark
        let planetName = navigationController?.navigationBar.topItem?.title ?? ""
        overrideUserInterfaceStyle = .dark
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor, PlanetColor[planetName]?.cgColor ?? UIColor.purple.cgColor]
    //        gradientLayer.locations = [0.0, 0.5, 0.8]
        view.layer.insertSublayer(gradientLayer, at: 0)
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

extension PlanetProfileView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planetProfileVM.getNumberOfElements()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetProfileCell", for: indexPath) as! PlanetProfileCell
        let info = planetProfileVM.getElementAtIndex(indexPath.item)
        cell.backgroundColor = UIColor.clear
        cell.planetPropertyLabel.text = info.0
        cell.planetPropertyValue.text = info.1
        return cell
    }
    
    
}
