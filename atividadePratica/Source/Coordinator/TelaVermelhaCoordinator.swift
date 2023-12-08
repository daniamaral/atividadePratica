//
//  TelaVermelhaCoordinator.swift
//  atividadePratica
//
//  Created by IFB-BIOTIC-17 on 08/12/23.
//

import Foundation
import UIKit

class TelaVermelhaCoordinator: Coordinator{
   
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = TelaVermelhaViewController()
        viewController.onVerdeTap = gotoVerdeTap
        viewController.onAzulTap = gotoAzulTap
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func gotoAzulTap(){
        self.navigationController.popToRootViewController(animated: true)
    }
    
    private func gotoVerdeTap(){
        self.navigationController.popViewController(animated: true)
    }
    
    
}
