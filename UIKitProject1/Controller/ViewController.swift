//
//  ContentView.swift
//  UIKitProject1
//
//  Created by Tuğrulcan Mercan on 4.10.2021.
//

import SwiftUI

class ViewController: UIViewController {
    var coordinator: MainCoordinator?
    var headerView = HomeHeader()

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(cgColor: #colorLiteral(red: 0.9365244767, green: 0.8654081041, blue: 1, alpha: 1))
        title = "Home"
        layout()
        
        
    }
    
    
}
extension ViewController {
    func layout(){
        
        view.addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
            headerView.widthAnchor.constraint(equalToConstant: view.bounds.width)
        ])
    }

}



struct ViewRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return ViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewRepresentable()
    }
}
