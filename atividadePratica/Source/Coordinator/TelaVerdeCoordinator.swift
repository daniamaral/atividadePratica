//
//  TelaVerdeCoordinator.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeCoordinator: Coordinator{
   
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = TelaVerdeViewController()
        viewController.onVermelhoTap = gotoVermelhoTap
        viewController.onAzulTap = gotoAzulTap
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func gotoAzulTap(){
        self.navigationController.popViewController(animated: true)
    }
    
    private func gotoVermelhoTap(){
        let coordinator = TelaVermelhaCoordinator(navigationController: navigationController)
        coordinator.start()
        
    }
    
    
}
