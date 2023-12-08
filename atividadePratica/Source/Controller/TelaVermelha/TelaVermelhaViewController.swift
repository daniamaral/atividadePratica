//
//  TelaVermelhaViewController.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class TelaVermelhaViewController: ViewControllerDefault{
    var onAzulTap: (() -> Void)?
    var onVerdeTap: (() -> Void)?
    
    
    
    lazy var loginView: TelaVermelhaView = {
        let view = TelaVermelhaView()
        //view.onRegisterTap = self.onRegisterTap //forma do professor
        
        view.onAzulTap = { [weak self] in    // forma do especialista da ntt data
            if let self = self{
                self.onAzulTap?()
            }
        }
        
        view.onVerdeTap = { [weak self] in
            if let self = self{
                self.onVerdeTap?()
            }
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Vermelha"
        
        
    }
}
