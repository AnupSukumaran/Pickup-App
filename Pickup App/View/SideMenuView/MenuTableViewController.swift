//
//  MenuTableViewController.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 07/06/21.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    var menuItems = ["Logout"]
    var menuHandler: (() -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Logout"
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            GVars.hasLoggedIn = false
            if let container = so_containerViewController {
                container.isSideViewControllerPresented = false
                menuHandler?()
            }
        }
    }

}
