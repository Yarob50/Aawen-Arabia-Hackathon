//
//  CompanyOffers.swift
//  Hackathon
//
//  Created by Ammar AlTahhan on 10/7/17.
//  Copyright © 2017 Ammar AlTahhan. All rights reserved.
//

import UIKit

class CompanyOffers: UITableViewController {
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var label: UILabel!
    var offers: [Offer] = []

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if offers.count > 0 {
            headerView.frame.size.height = 0
            label.isHidden = true
        }
        return offers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "id") as! CompanyOfferCell
        
        let offer = offers[indexPath.row]
        cell.des.text = offer.description
        cell.des.font = UIFont(name: "Hacen Jordan", size: 17)
        cell.con.text = offer.conditions
        cell.con.font = UIFont(name: "Hacen Jordan", size: 13)
        cell.but.setImage(#imageLiteral(resourceName: "checked"), for: .normal)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }
    
    @IBAction func signOutTapped(_ sender: Any) {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }

}
