//

//  ViewController.swift

//  cazait_hsseor

//  Created by 홍서린 on 2023/01/14.

//

import UIKit

class MainViewController: UIViewController {
    
    let topview: topView = {
        let view = topView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let bottomview: bottomView = {
        let view = bottomView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    private lazy var cafeCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(r: 241, g: 241, b: 239)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 34
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(customcafeView.self, forCellWithReuseIdentifier: "customcafeView")
        
        return collectionView
        
    }()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        
        self.view.backgroundColor = UIColor(r: 93, g: 36, b: 36)
        
        setupView()
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        //MARK: -
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    func setupView() {
        
        self.view.addSubview(topview)
        self.view.addSubview(bottomview)
        self.view.addSubview(self.cafeCollectionView)
        
        NSLayoutConstraint.activate([
            
            topview.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
            topview.heightAnchor.constraint(equalToConstant: 95),
            topview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            topview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            
            bottomview.topAnchor.constraint(equalTo: self.topview.bottomAnchor, constant: 0),
            bottomview.heightAnchor.constraint(equalToConstant: 70),
            bottomview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            bottomview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            
            
            self.cafeCollectionView.topAnchor.constraint(equalTo: bottomview.bottomAnchor, constant: 0),
            self.cafeCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            self.cafeCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            self.cafeCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            
            
        ])
        
    }
//MARK: - 네비게이션 중복 수정 1/31
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = InfoViewController()
        self.navigationController?.pushViewController(vc, animated : true)
        self.navigationItem.title = " "
        self.navigationController?.navigationBar.tintColor = .white
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
                self.view.endEditing(true)
            }
    
}
