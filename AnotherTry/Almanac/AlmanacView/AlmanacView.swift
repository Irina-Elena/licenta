//
//  AlmanacView.swift
//  AnotherTry
//
//  Created by Irina Cercel on 02/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class AlmanacView: UIViewController, Storyboarded {
    
    @IBOutlet weak var planetsCollectionView: UICollectionView!
    let searchController = UISearchController(searchResultsController: nil)
    var isSearchBarActive: Bool = false
    
    var almanacVM: AlmanacViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
        setNavigationBar()
        setCollectionView()
    }
    
    func setCollectionView() {
        planetsCollectionView.dataSource = self
        planetsCollectionView.delegate = self
        planetsCollectionView.register(UINib.init(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        let insetX = (view.bounds.width - 250) / 2
        planetsCollectionView.contentInset = UIEdgeInsets(top: 0, left: insetX, bottom: 0, right: -insetX)
    }
    
    func setNavigationBar() {
        title = "Almanac"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        
        setSearchBar()
    }
    
    func setSearchBar() {
        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.hidesSearchBarWhenScrolling = false
        let textFieldInsideSearchBar = searchController.searchBar.value(forKey: "searchField") as? UITextField
        textFieldInsideSearchBar?.textColor = UIColor.gray
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

// MARK: - CollectionView Data Source

extension AlmanacView: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return almanacVM.getNumberOfPlanets(isSearchBarActive: isSearchBarActive)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        let planet = almanacVM.getPlanetAtIndex(indexPath.item, isSearchBarActive: isSearchBarActive)
        cell.planetCellVM = PlanetCellViewModel(planet: planet)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: 250, height: 500)
        return size
    }
}

extension AlmanacView: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets.init(top: 0, left: 20, bottom: 0, right: 0)
//    }
}

extension AlmanacView: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        isSearchBarActive = true
        almanacVM.filterPlanets(name: searchText)
        planetsCollectionView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearchBarActive = false
        self.dismiss(animated: true, completion: nil)
    }
}
