//

//  ViewController.swift

//  cazait_hsseor

//  Created by 홍서린 on 2023/01/14.

//

import UIKit

class MainViewController: UIViewController {
    
    //컬렉션뷰 레이아웃 주기
    
    private lazy var cafeCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
       
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(r: 250, g: 240, b: 221)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 34
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(view1.self, forCellWithReuseIdentifier: "view1")
        
        return collectionView
        
    }()
    
    private let filterButton: UIButton = {
        
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = CGRect(x:18, y:151, width: 37, height: 37)
        button.clipsToBounds = true
        button.setImage(UIImage(named:"filterButtonx1.png"), for: .normal)
        button.addTarget(MainViewController.self, action: #selector(filterbuttonTapped), for: .touchUpInside)
        
        return button
        
    }()
    
    private let filterLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.text = "혼잡도 순"
        Label.textColor = .black
        
        return Label
        
    }()
    
    private let menuButton: UIButton = {
        
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.setImage(UIImage(named:"MenuButtonx1.png"), for: .normal)
        button.addTarget(MainViewController.self, action: #selector(menubuttonTapped), for: .touchUpInside)
        
        return button
        
    }()
    
    private let logoButton: UIButton = {
        
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.setImage(UIImage(named:"logox1.png"), for: .normal)
        
        return button
        
    }()
    
    private let searchTextfield: InsetTextField_1 = {
        
        let textField = InsetTextField_1();
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "search"
        textField.backgroundColor = UIColor(red: 0.554, green: 0.376, blue: 0.376, alpha: 1)
        textField.layer.cornerRadius = 20
        textField.setPlaceholder(color: .white)
        textField.insetX = 47.25
        textField.addleftimage(image: UIImage(named: "search.png")!)
        textField.textColor = UIColor.white
        textField.font = UIFont(name: "Inter-Regular", size: 20)
        textField.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        
        return textField
        
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(r: 250, g: 240, b: 221)
        
        setupView()
        
    }
    
    func setupView() {
        
        self.view.addSubview(self.cafeCollectionView)
        self.view.addSubview(filterButton)
        self.view.addSubview(filterLabel)
        self.view.addSubview(menuButton)
        self.view.addSubview(logoButton)
        self.view.addSubview(searchTextfield)
        
        NSLayoutConstraint.activate([
            
            self.cafeCollectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 205),
            self.cafeCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            self.cafeCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            self.cafeCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            
            filterButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 151),
            filterButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 18),
            filterLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 159),
            filterLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 66),
            
            menuButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 83),
            menuButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 335),
            menuButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -21),
            menuButton.heightAnchor.constraint(equalToConstant: 37),
            
            logoButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 81),
            logoButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 28),
            logoButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -337),
            logoButton.heightAnchor.constraint(equalToConstant: 39),
            
            searchTextfield.topAnchor.constraint(equalTo: self.logoButton.topAnchor),
            searchTextfield.bottomAnchor.constraint(equalTo: self.logoButton.bottomAnchor),
            searchTextfield.leadingAnchor.constraint(equalTo: self.logoButton.trailingAnchor, constant: 13),
            searchTextfield.trailingAnchor.constraint(equalTo: self.menuButton.leadingAnchor, constant: -10),
            
        ])
        
    }
    
    @objc func filterbuttonTapped(){
        
        view.backgroundColor = .systemTeal
        
    } //버튼 누르면 수행할거(나중에 네비게이션으로)
    
    @objc func menubuttonTapped(){
        
        view.backgroundColor = .systemTeal
        
    } //버튼 누르면 수행할거(나중에 네비게이션으로)
    
    @objc func logobuttonTapped(){
        
        // view.backgroundColor = .systemTeal
        
    } //버튼 누르면 수행할거(나중에 네비게이션으로)
    
}
