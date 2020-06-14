//
//  PlanetInfoView.swift
//  AnotherTry
//
//  Created by Irina Cercel on 23/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class PlanetInfoView: UIViewController, Storyboarded {
    @IBOutlet var planetImage: UIImageView!
    @IBOutlet var planetTableView: UITableView!
    
    var planetInfoVM: PlanetInfoViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavbar()
        setTableView()
        setBackground()
        
        planetImage.image = UIImage(named: title! + "_profile")
//        planetTableView.rowHeight = UITableView.automaticDimension
        // Do any additional setup after loading the view.
    }
    
    func setNavbar() {
        overrideUserInterfaceStyle = .dark
        navigationController?.setNavigationBarHidden(false, animated: true)
        title = planetInfoVM.planet.name
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let selectedIndexPath = planetTableView.indexPathForSelectedRow {
            planetTableView.deselectRow(at: selectedIndexPath, animated: animated)
        }
    }
    
    func setTableView() {
        planetTableView.delegate = self
        planetTableView.dataSource = self
        planetTableView.register(UINib(nibName: "PlanetInfoCell", bundle: nil), forCellReuseIdentifier: "PlanetInfoCell")
    }
    
    func setBackground() {
        overrideUserInterfaceStyle = .dark
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = planetTableView.bounds
        gradientLayer.colors = [UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor, PlanetColor[title!]?.cgColor ?? UIColor.purple.cgColor, UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor]
        gradientLayer.locations = [0.0, 0.4, 0.7]
        let backgroundView = UIView(frame: planetTableView.frame)
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
        planetTableView.backgroundView = backgroundView
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

extension PlanetInfoView: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planetInfoVM.getNumberOfTitles()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetInfoCell") as! PlanetInfoCell
        cell.planetInfoLabel.text = planetInfoVM.getTitleAtIndex(indexPath.item)
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        planetInfoVM.goToPlanetDescription(index: indexPath.item)
    }
}
