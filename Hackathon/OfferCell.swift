//
//  OfferCell.swift
//  Hackathon
//
//  Created by Ammar AlTahhan on 10/6/17.
//  Copyright © 2017 Ammar AlTahhan. All rights reserved.
//

import UIKit

class OfferCell: UITableViewCell {
    
    @IBOutlet weak var coverView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func btnTapped(_ sender: Any) {
        UIView.animate(withDuration: 2.0, animations: {
            self.coverView.transform = CGAffineTransform(translationX: 500, y: 0)
        })
    }

}
