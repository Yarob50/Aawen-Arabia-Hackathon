//
//  ViewController.swift
//  Hackathon
//
//  Created by Ammar AlTahhan on 10/6/17.
//  Copyright © 2017 Ammar AlTahhan. All rights reserved.
//

import UIKit

class Landing: UIViewController {
    
    @IBOutlet weak var btnView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var companyImage: UIImageView!
    @IBOutlet weak var personImage:UIImageView!
    
    private var person: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        personImage.transform = CGAffineTransform(translationX: self.view.frame.size.width, y: 0)
        self.nameTextField.text = "JarirBookstore"
        self.passTextField.text = "1234567891011"
    }
    
    @IBAction func userBtnTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.btnView.transform = CGAffineTransform(translationX: -self.view.frame.size.width/2, y: 0)
            self.personImage.transform = .identity
            self.companyImage.transform = CGAffineTransform(translationX: -self.view.frame.size.width, y: 0)
            self.nameTextField.text = "Khalid"
            self.passTextField.text = "14556466"
        }
        person = true
    }
    
    @IBAction func comBtnTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.4) {
            self.btnView.transform = .identity
            self.personImage.transform = CGAffineTransform(translationX: self.view.frame.size.width, y: 0)
            self.companyImage.transform = .identity
            self.nameTextField.text = "JarirBookstore"
            self.passTextField.text = "1234567891011"
        }
        person = false
    }
    
    @IBAction func singInTapped(_ sender: Any) {
        if person {
            performSegue(withIdentifier: "PersonSegue", sender: nil)
        } else {
            performSegue(withIdentifier: "CompanySegue", sender: nil)
        }
    }

}

