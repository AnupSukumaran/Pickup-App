//
//  MenuViewController.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 07/06/21.
//

import UIKit

class MenuViewController: UIViewController {
    
    var menuHandler: (() -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "embed") {
            if let nextViewController = segue.destination as? MenuTableViewController {
                nextViewController.menuHandler = menuHandler
            }
        }
    }

}
