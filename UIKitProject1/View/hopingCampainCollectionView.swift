////
////  hopingCampainCollectionView.swift
////  UIKitProject1
////
////  Created by Tuğrulcan Mercan on 3.11.2021.
////
//
import UIKit

//class StoredLocationCollectionViewManager:NSObject, UICollectionViewDataSource, UICollectionViewDelegate {
//    weak var collectionView: UICollectionView! {
//        didSet {
//            collectionView.dataSource = self
//            collectionView.delegate = self
//
//        }
//    }
//
//    init(collectionView: UICollectionView) {
//        // Initialize the manager with a collection view.
//        // This initializer can be called by your view controller at -viewDidLoad.
//        self.collectionView = collectionView
//    }
//
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 3
//    }
//
//    // This is the current method for returning the cell.
//    func collectionView(_ collectionView: UICollectionView,
//      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        return UICollectionViewCell()
//    }
//
//    // Etc.
//
//}


class hopingCampainCollectionView: UICollectionView {


//    lazy var shoppingCampaign:UICollectionView = {
//        let shpCmp = UICollectionView()
//        let layout = UICollectionViewFlowLayout()
//
//        layout.minimumLineSpacing = 1
//        layout.minimumInteritemSpacing = 1
//
//        let ft = UICollectionView(frame: UIScreen.main.bounds, collectionViewLayout: layout)
//        layout.scrollDirection = .vertical
//
//        shpCmp.backgroundColor = UIColor(named: "collectionColor")
//        shpCmp.isPagingEnabled = true
//        shpCmp.clipsToBounds = true
//        shpCmp.delegate = self
//        shpCmp.dataSource = self
//        shpCmp.register(FastTransactionViewCell.self, forCellWithReuseIdentifier: "SchCellId")
//        shpCmp.translatesAutoresizingMaskIntoConstraints = false
//        shpCmp.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "SchCellId")
//        return shpCmp
//    }()


    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
//        let layout = UICollectionViewFlowLayout()
        isPagingEnabled = true
        clipsToBounds = true
        register(UICollectionViewCell.self, forCellWithReuseIdentifier: "SchCellId")
        translatesAutoresizingMaskIntoConstraints = false


    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
//extension hopingCampainCollectionView : UICollectionViewDelegate,UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 6
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SchCellId", for: indexPath) as! FastTransactionViewCell
//
//
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: (collectionView.frame.width), height: collectionView.frame.height)
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 1
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 1
//    }
//
//
//}
