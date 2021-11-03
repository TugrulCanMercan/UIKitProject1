//
//  HomeViewController.swift
//  UIKitProject1
//
//  Created by Tuğrulcan Mercan on 2.11.2021.
//

import SwiftUI

final class HomeViewController: UIViewController {
    
    
    
    var coordinator:Coordinator?
    
    
    
    lazy var header = HomeHeader()
    
//    lazy var collectionFlowLayout:UICollectionViewFlowLayout = {
//        let layout = UICollectionViewFlowLayout()
//
//        layout.minimumLineSpacing = 1
//        layout.minimumInteritemSpacing = 1
//    }()
    
    lazy var schp = hopingCampainCollectionView(frame: UIScreen.main.bounds, collectionViewLayout: UICollectionViewLayout())
    
    
    lazy var contentViewSize = CGSize(width: self.view.bounds.width, height: self.view.bounds.height*2)
    
    
    lazy var scrollView:UIScrollView = {
        let sc = UIScrollView(frame: .zero)
        sc.backgroundColor = .yellow
        sc.frame = self.view.bounds
        sc.contentSize = contentViewSize
        sc.showsHorizontalScrollIndicator = true
        sc.bounces = false
        
        return sc
    }()
    lazy var fastTransactionCollection : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        
        let ft = UICollectionView(frame: UIScreen.main.bounds, collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        
        ft.backgroundColor = UIColor(named: "collectionColor")
        ft.isPagingEnabled = true
        ft.clipsToBounds = true
        ft.delegate = self
        ft.dataSource = self
        ft.register(FastTransactionViewCell.self, forCellWithReuseIdentifier: "CellId")
        ft.translatesAutoresizingMaskIntoConstraints = false
        ft.register(FastTransactionViewCell.self, forCellWithReuseIdentifier: "CellId")
        return ft
    }()
    
  
    //    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    //        // Disabling horizontal scrolling
    //            scrollView.contentOffset.x = 0.0
    //
    //            print(scrollView.contentOffset.y)
    //        }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        addConstraint()
        view.backgroundColor = .systemGray
        // Do any additional setup after loading the view.
    }
    
    
    
}
struct ViewRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return HomeViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewRepresentable()
    }
}




extension HomeViewController:UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    //        return UIEdgeInsets(top: 1.0, left: 1.0, bottom: 1.0, right: 1.0)
    //    }
    //    func collectionView(_ collectionView: UICollectionView,
    //                        layout collectionViewLayout: UICollectionViewLayout,
    //                        insetForSectionAt section: Int) -> UIEdgeInsets {
    //
    //        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    //    }
    //
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellId", for: indexPath) as! FastTransactionViewCell
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width/2)-2, height: collectionView.frame.height/4)
    }
    func addConstraint(){
        
        
        //        view.addSubview(header)
        //        view.addSubview(fastTransactionCollection)
        view.addSubview(scrollView)
        scrollView.addSubview(header)
        scrollView.addSubview(fastTransactionCollection)
        scrollView.addSubview(schp)
       
        header.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            
            
            header.topAnchor.constraint(equalTo: scrollView.topAnchor),
            header.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            header.heightAnchor.constraint(equalToConstant: view.bounds.height/3),
            
            fastTransactionCollection.topAnchor.constraint(equalTo: header.bottomAnchor,constant: -10),
            fastTransactionCollection.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fastTransactionCollection.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            fastTransactionCollection.heightAnchor.constraint(equalToConstant: 200),
            
            
        ])
        
        
    }
}
