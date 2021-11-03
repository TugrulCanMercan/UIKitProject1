//
//  HomeHeader.swift
//  UIKitProject1
//
//  Created by Tuğrulcan Mercan on 2.11.2021.
//

import UIKit

class HomeHeader: UIView {
  
    lazy var stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 5
//        var hdContent = HeaderContentView(frame: frame, contentName: "tugrul")
        
        sv.addArrangedSubview(headerContentVW)
        sv.addArrangedSubview(addCardButton)
        return sv
    }()
    
    lazy var headerContentVW :UIView = {
        let hdContent = HeaderContentView(frame: frame, contentName: "tugrul")
        hdContent.layer.cornerRadius = 5
        hdContent.layer.borderWidth = 1
        hdContent.translatesAutoresizingMaskIntoConstraints = false
        return hdContent
    }()
    
//    lazy var walletDetailsButton: UIButton = {
//        let bt = UIButton()
//        bt.setTitle("Plain ViewController", for: .normal)
//        bt.layer.cornerRadius = 5
//        bt.layer.borderWidth = 1
//        bt.translatesAutoresizingMaskIntoConstraints = false
//        
//        return bt
//    }()
    
    lazy var addCardButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("Subclassed ViewController", for: .normal)
        bt.contentEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        bt.layer.cornerRadius = 5
        bt.layer.borderWidth = 1
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstraints() {
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor ,constant: 20),
            stackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7),
            stackView.heightAnchor.constraint(equalToConstant: 75),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor)
            
        ])
    }
    
}
