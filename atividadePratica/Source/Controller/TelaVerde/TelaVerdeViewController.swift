//
//  TelaVerdeViewController.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeViewController: ViewControllerDefault{
    var onVermelhoTap: (() -> Void)?
    var onAzulTap: (() -> Void)?
    
    
    
    lazy var telaVerdeView: TelaVerdeView = {
        let view = TelaVerdeView()
        //view.onRegisterTap = self.onRegisterTap //forma do professor
        
        view.onVermelhoTap = { [weak self] in    // forma do especialista da ntt data
            if let self = self{
                self.onVermelhoTap?()
            }
        }
        
        view.onAzulTap = { [weak self] in
            if let self = self{
                self.onAzulTap?()
            }
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = telaVerdeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Verde"
        
        
    }
}
