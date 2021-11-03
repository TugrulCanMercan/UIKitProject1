//
//  MainCoordinator.swift
//  UIKitProject1
//
//  Created by Tuğrulcan Mercan on 5.10.2021.
//

import Foundation
import UIKit



class MainCoordinator:NSObject, Coordinator {
    
    
    var childCoordinator: [Coordinator] = []
    
    
    
    
    
    var navigationController: UINavigationController?
    
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let vc = HomeViewController()
        
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
extension MainCoordinator: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
    }
    
}
