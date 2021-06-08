//
//  HomeViewModel.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 08/06/21.
//

import UIKit
import SASLogger

class HomeViewModel: NSObject {
    
    var driveModelArr = [DriveModel]()
    
    var callLoginView: (() -> ())?
    var updateTable: (() -> ())?
    var menuHandler: (() -> ())?
    
    override init() {
        super.init()
        let dataArr = callingJsonFile()
        
        switch dataArr {
        case .success(let data):
            driveModelArr = data.driveModelArr
            Logger.p("Count = \(driveModelArr.count)")
            updateTable?()
            
        case .failure(let error):
            Logger.p("SASError = \(error.localizedDescription)")
        }
    }
    
}

//Table Delegate Functions
extension HomeViewModel: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return driveModelArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "HomeViewTableViewCell", for: indexPath) as? HomeViewTableViewCell {
            cell.config(model: driveModelArr[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    
    
}

// Functions
extension HomeViewModel {
    
    //MARK: calling Side Menu
    func callingSideMenu(vc: UIViewController) {
        if let container = vc.so_containerViewController {
            container.isSideViewControllerPresented = true
        }
    }
    
    func callingJsonFile() -> Result<ModelResponse,Error> {

        let path = Bundle.main.path(forResource: "QizJson", ofType: "json")

        do {

            let data = try String(contentsOfFile: path!).data(using: .utf8)

            do {
                let mod = try ModelResponse(data: data!)
                return .success(mod)
            } catch (let error) {
                return .failure(error)
            }


        } catch  (let error){
            return .failure(error)
        }

    }
    
    //MARK: Calling Login Page
    func callLogInPageFunc(_ main: UIViewController) {
        removeSavedSessionNew()
       // callingLoginPage(main)
//        guard let vc = UIStoryboard.loginViewController() else {return}
//        vc.modalPresentationStyle = .fullScreen
//        main.present(vc, animated: false, completion: nil)
        
    }
    
    func callingLoginPage() {
        Logger.p("GVars.hasLoggedIn = \(GVars.hasLoggedIn)")
        
        guard !GVars.hasLoggedIn else {return}
        callLoginView?()
//        guard let vc = UIStoryboard.loginViewController() else {return}
//        vc.modalPresentationStyle = .fullScreen
//        main.present(vc, animated: false, completion: nil)
    }

    
    
    //MARK:
    func removeSavedSessionNew() {
        UserDefaults.standard.removeObject(forKey: Constants.Keys.authID)
        
//        Logger.p("GVars.authID = \(String(describing: GVars.authID))")
//
//        UserDefaults.standard.removeObject(forKey: Constants.Keys.parent_id)
//        UserDefaults.standard.removeObject(forKey: Constants.Keys.parentName)
//      //  UserDefaults.standard.synchronize()
//        GVars.STUD_VIEW_SHOWED = false
//        GVars.HALF_UP = false
        
    }
    
    
}
