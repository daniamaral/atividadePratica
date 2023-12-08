//
//  UIColor+.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

extension UIColor{
    
    static var viewBackGroundColor: UIColor {
        UIColor(named: "viewBackGroundColor") ?? .white
    }
    
    static var buttonBackGroundColor: UIColor {
        UIColor(named: "buttonBackGroundColor") ?? UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1)
    }
    
//    static var buttonBackGroundColorRed: UIColor {
//        UIColor(named: "buttonBackGroundColorRed") ?? .red
//    }
//    
//    static var buttonBackGroundColorGreen: UIColor {
//        UIColor(named: "buttonBackGroundColorGreen") ?? .green
//    }
//    
//    static var buttonBackGroundColorBlue: UIColor {
//        UIColor(named: "buttonBackGroundColorBlue") ?? .blue
//    }
    
    static var textBackGroundColor: UIColor {
        UIColor(named: "textBackGroundColor") ?? .black
    }
    
    static var placeholderText: UIColor {
        UIColor(named: "placeholderText") ?? .black
    }
    
}
