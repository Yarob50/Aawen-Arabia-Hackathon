//
//  Companies.swift
//  Hackathon
//
//  Created by Ammar AlTahhan on 10/6/17.
//  Copyright © 2017 Ammar AlTahhan. All rights reserved.
//

import UIKit

class Companies: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let images = [#imageLiteral(resourceName: "Jarir-Bookstore-App"), #imageLiteral(resourceName: "Image-1"), #imageLiteral(resourceName: "Image"), #imageLiteral(resourceName: "27a37ac4b8a7dbd3fe7d58e5e92d2aed"), #imageLiteral(resourceName: "Image-2")]
    let titles = ["جرير",
                  "سليمان الحبيب",
                  "بندة",
                  "السرايا",
                  "الخطوط السعودية"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SPCell", for: indexPath) as! CCVCell
        
        cell.image.image = images[indexPath.item]
        cell.title.text = titles[indexPath.item]
        
        return cell
    }
    
    @IBAction func signOutTapped(_ sender: Any) {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }

}
