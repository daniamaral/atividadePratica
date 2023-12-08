//
//  TelaAzulViewController.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulViewController: ViewControllerDefault{
    var onVerdeTap: (() -> Void)?
    
    
    
    lazy var telaAzulView: TelaAzulView = {
        let view = TelaAzulView()
        
        view.onVerdeTap = { [weak self] in
            if let self = self{
                self.onVerdeTap?()
            }
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = telaAzulView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Azul"
        
        
    }
}
