//
//  NSObject+Ext.swift
//  Loqqat
//
//  Created by Manu Puthoor on 19/12/19.
//  Copyright © 2019 Qaptive_Technologies. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

extension NSObject {
    
    #if GOSCHOOL
    
    func setOrderStatusLBValueAttr<T: TransactionProtocol>(_ model: T, txtColorOff: Bool = false, strArr: (success: String, failed: String, pending: String) = ("SUCCESS","FAILED","PROCESSING")) -> NSMutableAttributedString {
       
        let paymentStatus = PaymentStatus(rawValue: model.payment_status ?? "2") ?? .processing
        return orderStatusConfigedStringAttr(paymentStatus:paymentStatus, txtColorOff: txtColorOff, strArr: strArr)
    }
    
   
    func orderStatusConfigedStringAttr(paymentStatus: PaymentStatus, txtColorOff: Bool = false, strArr: (success: String, failed: String, pending: String) = ("Success","Failed","Processing")) -> NSMutableAttributedString {
        let defaultColor = UIColor.setColors(dark: .c3, light: .c6)
        switch paymentStatus {
        case .success:
            let txtAtt = NSMutableAttributedString(string: strArr.success)
                .with(color: txtColorOff ? defaultColor : .green)
            return txtAtt
            
        case .failed:
            let txtAtt = NSMutableAttributedString(string: strArr.failed)
                .with(color: txtColorOff ? defaultColor : .red)
            return txtAtt
            
        case .processing:
            let txtAtt = NSMutableAttributedString(string: strArr.pending)
                .with(color: txtColorOff ? defaultColor : .orange)
            return txtAtt
            
        }
        
    }
    
    #endif
    
    //MARK: Adapt view for iPhone only
    func adjustViewForIPhonesOnly2<T>( fourAndS: T, fiveAndS: T, sixSevenEight: T, forPlus: T, xAndxs: T, xr: T, xsMax: T ) -> T? {
        let screenType = UIDevice.current.screenType
        
        switch screenType {
        case .iPhones_4_4S:
            return fourAndS
            
        case .iPhones_5_5s_5c_SE:
            return fiveAndS
            
        case .iPhones_6_6s_7_8:
            return sixSevenEight
            
        case .iPhones_6Plus_6sPlus_7Plus_8Plus:
            return forPlus
            
        case .iPhones_X_XS:
            return xAndxs
            
        case .iPhone_XR:
            return xr
            
        case .iPhone_XSMax:
            return xsMax
            
        default:
            return T.self as? T
        }
        
    }
    
//    //MARK: Set Ward Image
//    func setImage(_ imgView: UIImageView,_ indic: UIActivityIndicatorView,_ urlString: String)  {
//        indic.startAnimating()
//        imgView.isHidden = true
//        imgView.sd_setImage(with: URL(string: urlString), placeholderImage: #imageLiteral(resourceName: "profile"), options: .highPriority) { (img, error, _, _) in
//            indic.stopAnimating()
//            imgView.isHidden = !(error == nil)
//        }
//        
//    }
//    
//   func menuColors() ->  (bg: UIColor, txtClr: UIColor, codeClr: UIColor, selecBGL: UIColor) {
//           
//        return (UIColor.setColors(dark: .newGray, light: .c3) , UIColor.setColors(dark: .c3, light: .c5), UIColor.setColors(dark: .c7, light: .c7), UIColor.setColors(dark: .c0, light: .c4))
//    }
//    
//    //MARK:
//    func callingVC_NotRegViewController(_ main: UIViewController) {
//        guard let vc = UIStoryboard.notRegViewController() else {return}
//        vc.modalPresentationStyle = .fullScreen
//        vc.transitioningDelegate = main as? UIViewControllerTransitioningDelegate
//        main.present(vc, animated: true, completion: nil)
//    }
//    
//    //MARK:SEND NOTIFIC TOKEN
//      func sending_tnk_Notifc_API(device_Tkn: String, type: String) {
//          
//          APILibrary.shared.updateParentDeviceInfo_API(device_token: device_Tkn, type: type) { (response) in
//              switch response {
//              case .Success(let msg):
//                  Logger.pnt("msg = \(msg)😁")
//                  UserDefaults.standard.set(device_Tkn, forKey: Constants.Keys.savedFCMToken)
//                  
//              case .Error(let error):
//                  Logger.pnt("error = \(error)😓")
//              }
//          }
//      }
//    
//    //MARK: NEW WARDLIST INTEGRATION
//    //MARK: WARD LIST API CALL
//    func callingWardApiForStudUpdate(_ main: UIViewController, showActi: Bool, _ viewToLoad: UIView, comp: @escaping(_ studModel: [StudentsModel]) -> () ) {
//       
//         guard let parent_id = GVars().parent_id else {return}
//
//         Logger.pnt("@://parent_id = \(parent_id)")
//         main.customShowCustomActivity(viewToLoad, GVars.indicType, GVars.is_in_NightMode ? hNColor : dColor, showActi)
//         
//         APILibrary.shared.wardListAPI(parent_id: parent_id) { (response) in
//
//             switch response {
//             case .Success(let data):
//                comp(data.studentsModel)
//                
//             case .Error(let error):
//                main.stopActivityIndic()
//                Logger.p("callingWardApi -Error = \(error) ")
//    
//
//             }
//         }
//        
//         //return studModel
//         
//     }
//    
//    func sessionErrorNotOccured(error: String,_ main: UIViewController) -> Bool {
//        
//        guard error != Constants.Texts.sessionExpErrorMsg else {
//             
//             AlertView.showAlertWithComBLK(title: Texts.sessionMsg, message: Constants.Texts.sessionExpErrorMsg, buttonTitle: "OK", selfClass: main, comBLK: {
//                 self.removeSavedSession()
//                 self.dismissToRootVC(main)
//             })
//         
//             return false
//        }
//        
//        return true
//    }
//    
//    func removeSavedSession() {
//        UserDefaults.standard.removeObject(forKey: Constants.Keys.authID)
//        UserDefaults.standard.removeObject(forKey: Constants.Keys.parent_id)
//        UserDefaults.standard.removeObject(forKey: Constants.Keys.parentName)
//    }
//    
//    //MARK: dismiss To RootViewController
//    func dismissToRootVC(_ main: UIViewController) {
//        main.performSegue(withIdentifier: "unwindToMenu", sender: main)
//    }
//    
//    //MARK:
//    func setPostFix(_ stringToFix: String) -> String {
//        if stringToFix == "1" {
//            return stringToFix + "st"
//        } else if stringToFix == "2" {
//            return stringToFix + "nd"
//        } else if stringToFix == "3"{
//            return stringToFix + "rd"
//        } else {
//            return stringToFix + "th"
//        }
//    }
//    
//    func studentMenuConfig(_ studsModel: [StudentsModel]) -> CellConfigurationClosure? {
//        
//        let menuCellConfig: CellConfigurationClosure? = { (index: Index, item: String, cell: DropDownCell) -> Void in
//            
//            guard let cell = cell as? StudentCell else {Logger.pnt("StudentCell😓");return }
//            Logger.pnt("DataHere = \(String(describing: studsModel[index].name))")
//            
//            cell.mainSubView.backgroundColor = self.menuColors().bg
//            cell.studentName.text = studsModel[index].name ?? "-NA-"
//            cell.studentName.textAlignment = GVars.isArabic ? .right : .left
//            
//            
//            let className = "Class " + self.setPostFix((studsModel[index].studentClass ?? "-"))
//            let division = (studsModel[index].division ?? "-") + " Division"
//            
//            cell.studentClass.text = className  + " " + division
//            cell.studentClass.textAlignment = GVars.isArabic ? .right : .left
//            
//            if let schoolDetail = studsModel[index].school {
//                cell.studentSchool.text = schoolDetail.name ?? "-"
//            } else { cell.studentSchool.text = "-" }
//            
//            if let status = States(rawValue: studsModel[index].status ?? 2) {
//                self.wardStatus(states: status, cell)
//            }
//
//            cell.studentSchool.textAlignment = GVars.isArabic ? .right : .left
//            
//            cell.profileImgView.sd_setImage(with: URL(string: studsModel[index].profile_pic ?? "-"), placeholderImage: #imageLiteral(resourceName: "profile"), options: .highPriority) { (img, error, _, _) in
//                if error == nil {
//                    cell.profileImgView.isHidden = false
//                } else {
//                    cell.profileImgView.isHidden = true
//                }
//                
//            }
//            
//        }
//        
//        return menuCellConfig
//    }
//    
//    //MARK:
//    func wardStatus(states: States, _ main: StudentCell) {
//        
//        Ward.status(states) { (status) in
//            switch status {
//                
//            case .inBus:
//                main.statusView.backgroundColor = #colorLiteral(red: 0.1661458015, green: 0.5576506257, blue: 0.01704314351, alpha: 1)
//                self.setColourAndImage(main, colour: #colorLiteral(red: 0.1661458015, green: 0.5576506257, blue: 0.01704314351, alpha: 1), image: #imageLiteral(resourceName: "bus"))
//                
//            case .school:
//                main.statusView.backgroundColor = #colorLiteral(red: 0.07263375074, green: 0.4468211532, blue: 0.788813889, alpha: 1)
//                self.setColourAndImage(main, colour: #colorLiteral(red: 0.07263375074, green: 0.4468211532, blue: 0.788813889, alpha: 1), image: #imageLiteral(resourceName: "school"))
//                
//            case .home:
//                main.statusView.backgroundColor = #colorLiteral(red: 0.6538364291, green: 0.8003231883, blue: 0.05623481423, alpha: 1)
//                self.setColourAndImage(main, colour: #colorLiteral(red: 0.6538364291, green: 0.8003231883, blue: 0.05623481423, alpha: 1), image: #imageLiteral(resourceName: "home"))
//                
//            case .absent:
//                main.statusView.backgroundColor = #colorLiteral(red: 0.9485331178, green: 0.06649004668, blue: 0.06949002296, alpha: 1)
//                self.setColourAndImage(main, colour: #colorLiteral(red: 0.9485331178, green: 0.06649004668, blue: 0.06949002296, alpha: 1), image: #imageLiteral(resourceName: "cancel"))
//                
//            case .stayback:
//                main.statusView.backgroundColor = #colorLiteral(red: 0.03421877697, green: 0.7992725968, blue: 0.7993248105, alpha: 1)
//                self.setColourAndImage(main, colour: #colorLiteral(red: 0.03421877697, green: 0.7992725968, blue: 0.7993248105, alpha: 1), image: #imageLiteral(resourceName: "clock").withRenderingMode(.alwaysTemplate))
//                
//            case .early_leave:
//                main.statusView.backgroundColor = #colorLiteral(red: 0.9483125806, green: 0.6190958619, blue: 0.03914057463, alpha: 1)
//                self.setColourAndImage(main, colour: #colorLiteral(red: 0.9483125806, green: 0.6190958619, blue: 0.03914057463, alpha: 1), image:#imageLiteral(resourceName: "home"))
//            }
//        }
//    }
//    
//    //MARK: set colour and Image
//    func setColourAndImage(_ main: StudentCell, colour: UIColor, image: UIImage ) {
//        main.statusView.backgroundColor = colour
//        main.busImgView.image = image
//        main.busImgView.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        
//    }
//    
//    func setGoogleMapKey() {
//        let googleApiKey = GVars.google_Map_Key_IOS ?? Constants.ApiBase.Map_APIKey
//        GMSServices.provideAPIKey(googleApiKey)
//        GMSPlacesClient.provideAPIKey(googleApiKey)
//    }
//    
//    func findAppTargetIndex() {
//        if let dict = Bundle.main.infoDictionary, let id = dict[Constants.Keys.appleID] as? String  {
//            Logger.p("id = \(id)")
//            GVars.appleID = id
//        }
//    }
    

}
