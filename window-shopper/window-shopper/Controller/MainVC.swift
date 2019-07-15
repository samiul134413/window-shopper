//
//  ViewController.swift
//  window-shopper
//
//  Created by Samiul Haque on 15/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9625372291, green: 0.5197191834, blue: 0, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        
        wageText.inputAccessoryView = calcButton
        priceText.inputAccessoryView = calcButton
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    @objc func calculate()
    {
        if let wageTxt = wageText.text, let priceTxt = priceText.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt)
            {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden =  false
                resultLabel.text = "\(Wage.returnHours(forWage: wage, forPrice: price))"
            }
        }
    }
    @IBAction func clearCalculator(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageText.text = ""
        priceText.text = ""
    }
    
}

