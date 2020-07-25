//
//  EntryCell.swift
//  Hackathon
//
//  Created by Ammar AlTahhan on 10/7/17.
//  Copyright © 2017 Ammar AlTahhan. All rights reserved.
//

import UIKit

class EntryCell: UITableViewCell {
    
    @IBOutlet weak var field: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
