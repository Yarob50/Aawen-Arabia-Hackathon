//
//  CustomizableView.swift
//  تطبيق كرام
//
//  Created by يعرب المصطفى on 8/11/16.
//  Copyright © 2016 يعرب المصطفى. All rights reserved.
//

import UIKit

@IBDesignable class CustomizableView: UIView {

    @IBInspectable var cornerRad:CGFloat = 0
        {
        didSet{
            self.layer.cornerRadius = cornerRad
        }
    }
    
    @IBInspectable var borderWidth:CGFloat = 0
        {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor:UIColor = UIColor.black
        {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var shadowWidth:CGFloat = 0
        {
        didSet{
            self.layer.shadowColor = UIColor.gray.cgColor
            self.layer.shadowOpacity = 1
            self.layer.shadowOffset = CGSize(width: 0, height: 10)
            self.layer.shadowRadius = 2
            self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
            
            self.layer.shouldRasterize = true
        }
    }
    
    

}
