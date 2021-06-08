//
//  LoginViewController.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 08/06/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var baseView: UIView!
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITextField.connectFields(fields: [usernameTF,password])
        KeyBrd().regKBNotific(scrollView, 120)
        usernameTF.text = "James"
        password.text = "password"
    }
    
    
    @IBAction func loginBtnAction(_ sender: Any) {
        self.view.endEditing(true)
        GVars.hasLoggedIn = true
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    deinit {
        KeyBrd().deregisterKBNotific()
    }
    

}
