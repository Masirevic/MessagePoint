//
//  InsetTextField.swift
//  MessagePoint
//
//  Created by Ljubomir on 12/28/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class InsetTextField: UITextField {


    private var padding = UIEdgeInsetsMake(0, 20, 0, 0)
    
    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
          return UIEdgeInsetsInsetRect(bounds, padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
         return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    
    
    func setupView () {
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedStringKey.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        self.attributedPlaceholder = placeholder
    }
    
    
   
    
    
}
