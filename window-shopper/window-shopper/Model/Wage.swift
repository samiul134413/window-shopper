//
//  Wage.swift
//  window-shopper
//
//  Created by Samiul Haque on 15/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import Foundation
class Wage{
    class func returnHours(forWage wage:Double,forPrice price:Double) -> Int
    {
        return Int(ceil(price/wage))
    }
}
