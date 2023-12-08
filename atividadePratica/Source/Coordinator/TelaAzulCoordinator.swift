//
//  TelaAzulCoordinator.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulCoordinator: Coordinator{
    
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = TelaAzulViewController()
        viewController.onVerdeTap = gotoVerdeTap
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func gotoVerdeTap(){
        let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
        coordinator.start()
        
    }
    
    
}
