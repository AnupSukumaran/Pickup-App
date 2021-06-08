//
//  ContainerViewController.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 07/06/21.
//

import UIKit
import SidebarOverlay

class ContainerViewController: SOContainerViewController {
    
    static  let forFourS_M: CGFloat = 50
    static let forEightAnd6_M: CGFloat = 80
    static  let forPlus_M: CGFloat = 80
    static let forXXsPlus_M: CGFloat = 80
    

//    var width: CGFloat = {
//        let v = UIViewController().adjustViewForIPhonesOnly2(fourAndS: forFourS_M, fiveAndS: forFourS_M, sixSevenEight: forEightAnd6_M, forPlus: forPlus_M, xAndxs: forXXsPlus_M, xr: forXXsPlus_M, xsMax: forXXsPlus_M)
//        
//        return v ?? 0
//    }()
    
//    override var preferredStatusBarStyle : UIStatusBarStyle {
//        if #available(iOS 13.0, *) {
//            return GVars.is_in_NightMode ? .lightContent : .darkContent
//        } else {
//            return GVars.is_in_NightMode ? .lightContent : .default
//        }
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        settingTopView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        settingSideView()
    }
    
     @IBAction func unwindToMenu(segue: UIStoryboardSegue) {
        //MARK: ADDED TOKEN UPDATE API AT LOG IN SUCCESS
        
    }
    


}

extension ContainerViewController {
    //MARK: SETTING THE SIDE MENU
    func settingSideView() {
        sideMenuWidth = view.frame.width - view.frame.width/4
        sideViewController = storyboard?.instantiateViewController(withIdentifier: Constants.ViewKeys.menuVC)
        
    }
    
    //MARK: Setting The Top page
    func settingTopView() {

        let vc = storyboard?.instantiateViewController(withIdentifier: Constants.ViewKeys.homeVC) as! HomeViewController
        vc.modalPresentationStyle = .fullScreen
        vc.viewModel = HomeViewModel()
        topViewController = vc

    }
}
