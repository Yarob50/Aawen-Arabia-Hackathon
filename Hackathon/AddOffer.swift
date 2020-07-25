//
//  AddOffer.swift
//  Hackathon
//
//  Created by Ammar AlTahhan on 10/7/17.
//  Copyright © 2017 Ammar AlTahhan. All rights reserved.
//

import UIKit

class AddOffer: UITableViewController {
    
    @IBOutlet weak var desField: UITextField!
    @IBOutlet weak var conField: UITextField!
    @IBOutlet weak var dateField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let when = DispatchTime.now() + 1   //Replace this with the actual verification process
        DispatchQueue.main.asyncAfter(deadline: when) { //
            self.desField.text = "خصم 5% على منتجات الكمبيوتر المحمول"
            self.conField.text = "ينطبق هذا العرض على فروع الرياض فقط"
            self.dateField.text = "31/2/2018"
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 3 {
            let offer = Offer(des: desField.text!, con: conField.text!, ima: #imageLiteral(resourceName: "Jarir-Bookstore-App"))
            let prev = self.navigationController?.previousViewController() as! CompanyOffers
            prev.offers.append(offer)
            (self.navigationController?.popViewController(animated: true))
        }
    }

    @IBAction func addTapped(_ sender: Any) {
        
    }

}
