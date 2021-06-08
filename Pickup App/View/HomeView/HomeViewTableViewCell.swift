//
//  HomeViewTableViewCell.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 08/06/21.
//

import UIKit
import SDWebImage

class HomeViewTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var subView: UIViewCustom!
    
    @IBOutlet weak var driverProfileImg: UIImageView!
    @IBOutlet weak var driverProfileIndic: UIActivityIndicatorView!
    
    @IBOutlet weak var carImg: UIImageView!
    @IBOutlet weak var carImgIndic: UIActivityIndicatorView!
    
    @IBOutlet weak var nameLB: UILabel!
    @IBOutlet weak var carLB: UILabel!
    @IBOutlet weak var telephoneLB: UILabel!
    
    
    func config(model: DriveModel) {
        nameLB.text = model.driveName ?? ""
        carLB.text = model.carNumber ?? ""
        telephoneLB.text = model.telephoneNumber ?? ""
        setImage(carImg, carImgIndic, model.carImgUrl ?? "")
        setImage(driverProfileImg, driverProfileIndic, model.driverImgUrl ?? "")
    }
    
    func setImage(_ imgView: UIImageView,_ indic: UIActivityIndicatorView,_ urlString: String)  {
        indic.startAnimating()
        imgView.isHidden = true
        imgView.sd_setImage(with: URL(string: urlString), placeholderImage: #imageLiteral(resourceName: "profile"), options: .highPriority) { (img, error, _, _) in
            indic.stopAnimating()
            imgView.isHidden = !(error == nil)
        }
        
    }
    
}
