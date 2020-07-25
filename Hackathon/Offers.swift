//
//  Offers.swift
//  Hackathon
//
//  Created by Ammar AlTahhan on 10/6/17.
//  Copyright © 2017 Ammar AlTahhan. All rights reserved.
//

import UIKit

class Offers: UITableViewController {
    
    private var cellExpandedIndexPath: Int = 10

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = 50
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.beginUpdates()
        tableView.endUpdates()
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 2
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "id", for: indexPath) as! OfferCell
//
//        
//
//        return cell
//    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellExpandedIndexPath = indexPath.row
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == cellExpandedIndexPath {
            print("220")
            return 220
        }
        return 50
    }

}
