//
//  DriveModel.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 08/06/21.
//

import UIKit

struct DriveModel: Codable {
    
    let driverImgUrl: String?
    let carImgUrl: String?
    let driveName: String?
    let carNumber: String?
    let telephoneNumber: String?
    
    enum CodingKeys: String, CodingKey {
        
        case driverImgUrl = "driver_img"
        case carImgUrl = "car_img"
        case driveName = "drive_name"
        case carNumber = "car_number"
        case telephoneNumber = "telephone_number"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        driverImgUrl = try values.decodeIfPresent(String.self, forKey: .driverImgUrl)
        carImgUrl = try values.decodeIfPresent(String.self, forKey: .carImgUrl)
        driveName = try values.decodeIfPresent(String.self, forKey: .driveName)
        carNumber = try values.decodeIfPresent(String.self, forKey: .carNumber)
        telephoneNumber = try values.decodeIfPresent(String.self, forKey: .telephoneNumber)
    }
    
}
