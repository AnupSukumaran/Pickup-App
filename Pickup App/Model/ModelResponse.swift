//
//  ModelResponse.swift
//  Pickup App
//
//  Created by Sukumar Anup Sukumaran on 08/06/21.
//

import Foundation
import UIKit
import SASLogger

public class ModelResponse: NSObject, Codable {
    
    var driveModelArr = [DriveModel]()
    //var driveModel:DriveModel?
    
    public init(data: Data) throws {
        super.init()
        driveModelArr = try JSONDecoder().decode([DriveModel].self, from: data)
        //driveModel = try? JSONDecoder().decode(DriveModel.self, from: data)
    }

}
