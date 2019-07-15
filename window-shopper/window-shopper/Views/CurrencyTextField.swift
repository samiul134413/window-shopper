//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Samiul Haque on 15/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8353789449, green: 0.8304137588, blue: 0.8391961455, alpha: 0.8)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
        currencyLabel.clipsToBounds = true
    }
    override func prepareForInterfaceBuilder()
    {
        customizeView()
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        customizeView()
    }
    
    func customizeView()
    {
        backgroundColor = #colorLiteral(red: 0.9920595288, green: 0.9922251105, blue: 0.9920377135, alpha: 0.2455586473)
        
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true 
        if let p = placeholder
        {
            let place = NSAttributedString(string: p,
                        attributes: [.foregroundColor : UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
