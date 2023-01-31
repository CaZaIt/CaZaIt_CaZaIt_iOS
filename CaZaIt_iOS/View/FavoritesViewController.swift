//
//  ViewController.swift
//  CaZaIt_FavoritesView
//
//  Created by 홍서린 on 2023/01/26.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    let topview: favoritesTopView = {
        let view = favoritesTopView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let bottomview: favoritesBottomView = {
        let view = favoritesBottomView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
   
    private lazy var cafeCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(r: 241, g: 241, b: 239)
        layout.minimumLineSpacing = 25
        
      //MARK: -
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(favoritesCustomCafeView.self, forCellWithReuseIdentifier: "favoritesCustomCafeView")
        

        return collectionView
        
    }()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(r: 93, g: 36, b: 36)
        
        setupView()
    
        
    }
    
    func setupView() {
        
        self.view.addSubview(topview)
        self.view.addSubview(bottomview)
        self.bottomview.addSubview(self.cafeCollectionView)
        
        NSLayoutConstraint.activate([
            
            self.cafeCollectionView.topAnchor.constraint(equalTo: self.bottomview.topAnchor, constant: 13),
            self.cafeCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 17),
            self.cafeCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -17),
            self.cafeCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            
            topview.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 54),
            topview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -720),
            topview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            topview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            
            bottomview.topAnchor.constraint(equalTo: self.topview.bottomAnchor, constant: 0),
            bottomview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            bottomview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            bottomview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            
            
        ])
        
    }
    
}

