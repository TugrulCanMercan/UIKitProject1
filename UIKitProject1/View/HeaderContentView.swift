//
//  HeaderContentView.swift
//  UIKitProject1
//
//  Created by Tuğrulcan Mercan on 2.11.2021.
//

import UIKit

class HeaderContentView: UIView {
    
    var ContentName:String
    
    lazy var ContentLabel : UILabel = {
      
        let lbl = UILabel()
        lbl.numberOfLines = 1
        lbl.adjustsFontSizeToFitWidth = true
        lbl.minimumScaleFactor = 0.5
        lbl.text = ContentName
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        return lbl
    }()
    
    init(frame:CGRect,contentName:String) {
       
        self.ContentName = contentName
        
        super.init(frame: frame)
        addSubview(ContentLabel)
     
        layout()
        print(bounds.width)
    }
    
    func layout(){
        
        NSLayoutConstraint.activate([
            ContentLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            ContentLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 2),
            ContentLabel.widthAnchor.constraint(equalTo:
                                                    safeAreaLayoutGuide.widthAnchor),
            
            
        ])
        
    }
    
    
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
