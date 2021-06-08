//
//  HomeViewController.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 07/06/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var driversTable: UITableView!
    
    var viewModel: HomeViewModel? {
        didSet {
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        driversTable.delegate = viewModel
        driversTable.dataSource = viewModel
        
    }
    
    
    @IBAction func menuBtn(_ sender: Any) {
        viewModel?.callingSideMenu(vc: self)
        //callingSideMenu()
    }
    

}


