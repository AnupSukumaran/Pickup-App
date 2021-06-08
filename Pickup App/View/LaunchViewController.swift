//
//  LaunchViewController.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 07/06/21.
//

import UIKit

class LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        callContainerVC()
    }
    

    

}


extension LaunchViewController {
    
    //MARK:
    func callContainerVC() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
           
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContainerViewController") as! ContainerViewController
                vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
    
        }
    }
    
}
