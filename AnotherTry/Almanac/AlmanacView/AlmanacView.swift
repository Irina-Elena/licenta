//
//  AlmanacView.swift
//  AnotherTry
//
//  Created by Irina Cercel on 02/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class AlmanacView: UIViewController, Storyboarded, UISearchBarDelegate {
    
    @IBOutlet weak var planetsCollectionView: UICollectionView!
    
    var almanacVM: AlmanacViewModel!
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .gray
        
        title = "Almanac"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
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
