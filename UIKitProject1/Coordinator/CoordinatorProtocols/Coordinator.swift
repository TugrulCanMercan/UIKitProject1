//
//  Coordinator.swift
//  UIKitProject1
//
//  Created by Tuğrulcan Mercan on 5.10.2021.
//

import Foundation
import UIKit


//enum Event {
//    case buttonTapped
//}

protocol Coordinator {
    var childCoordinator :[Coordinator] {get set}
    
    var navigationController:UINavigationController? {get set}
    
//    func eventOccured(with event:Event)
    func start()
}

//protocol Coordinating {
//    var coordinator:Coordinator? {get}
//}
