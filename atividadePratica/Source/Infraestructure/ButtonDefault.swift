//
//  ButtonDefault.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class ButtonDefault: UIButton{
    init(button: String, color: String = "buttonBackGroundColor"){
        super.init(frame: .zero)
        initButtonDefault(button: button, color: color)
    }
    
    private func initButtonDefault(button: String, color: String){
        self.setTitle(button, for: .normal)
        self.layer.backgroundColor = UIColor(named: color)?.cgColor
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}
