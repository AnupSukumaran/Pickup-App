//
//  HomeViewController.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 07/06/21.
//

import UIKit
import SASLogger

class HomeViewController: UIViewController {
    
    @IBOutlet weak var driversTable: UITableView!
    
    var viewModel: HomeViewModel? {
        didSet {
            setHandlers()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        driversTable.delegate = viewModel
        driversTable.dataSource = viewModel
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //callingLoginPage()
        viewModel?.callingLoginPage()
    }
    
    
    @IBAction func menuBtn(_ sender: Any) {
        viewModel?.callingSideMenu(vc: self)
        //callingSideMenu()
    }
    

}


extension HomeViewController {
    
    func setHandlers() {
        viewModel?.callLoginView = { [weak self] in
            guard let vc = self else {return}
            vc.callingLoginPage()
        }
        
        viewModel?.updateTable = { [weak self] in
            guard let vc = self else {return}
            vc.driversTable.reloadData()
        }
        
        viewModel?.menuHandler = { [weak self] in
            guard let vc = self else {return}
            vc.viewModel?.callingLoginPage()
        }
    }
    
    func callingLoginPage() {
        guard let vc = UIStoryboard.loginViewController() else {return}
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
    }
}
