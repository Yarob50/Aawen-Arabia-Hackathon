//
//  Offer.swift
//  Hackathon
//
//  Created by Ammar AlTahhan on 10/7/17.
//  Copyright © 2017 Ammar AlTahhan. All rights reserved.
//

import Foundation
import UIKit

class Offer {
    
    var description: String
    var conditions: String
    var image: UIImage
    
    init(des: String, con: String, ima: UIImage) {
        description = des
        conditions = con
        image = ima
    }
    
}
