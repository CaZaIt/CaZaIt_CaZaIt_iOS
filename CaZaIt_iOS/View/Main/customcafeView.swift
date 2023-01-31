//  customCafeView.swift
//  practice_scrollview
//
//  Created by 홍서린 on 2023/01/13.
//
import UIKit
//롬곡
class customcafeView: UICollectionViewCell {
   
    let cafeImage: UIImageView = {
        let imageView = UIImageView()
       
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "firstpcx1")
        imageView.frame = CGRect(x:0, y:0, width: 343, height: 226)
       
        return imageView
    }()
    
    let cafeName: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "롬곡"
        label.numberOfLines = 1
       
        return label
    }()
    
    let cafeDistance: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "220m"
        label.numberOfLines = 1
        
        return label
    }()
    
    let cafeLocation: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "서울특별시 광진구 광나루로 375-1 2층(군자동)"
        label.numberOfLines = 1
      
        return label
    }()
    
    let cafeConfusion: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = UIColor(r: 83, g: 51, b: 41)
        label.textAlignment = .center
        label.text = "보통"
        label.layer.cornerRadius = 15
        label.clipsToBounds = true
        label.layer.borderWidth = 0.5
        label.backgroundColor = UIColor(r: 229, g: 211, b: 203)
        label.layer.borderColor = UIColor(red: 0.898, green: 0.827, blue: 0.796, alpha: 1).cgColor
        label.numberOfLines = 1
        
        return label
    }()
    
    let favoriteImage: UIButton = {
        let button = UIButton()
       
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = CGRect(x:0, y:0, width: 16, height: 15)
        button.clipsToBounds = true
        button.setImage(UIImage(named:"favoritex1.png"), for: .normal)
      
        return button
    }()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView() {
        
        backgroundColor = .white
        self.addSubview(cafeImage)
        self.addSubview(cafeName)
        self.addSubview(cafeDistance)
        self.addSubview(cafeLocation)
        self.addSubview(cafeConfusion)
        self.addSubview(favoriteImage)
        
        NSLayoutConstraint.activate([
            //롬곡 제약조건
            cafeImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            cafeImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            cafeImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            
            cafeName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 17.5),
            cafeName.topAnchor.constraint(equalTo: topAnchor, constant: 252),
            cafeName.heightAnchor.constraint(equalToConstant: 24),
            
            cafeDistance.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 61.5),
            cafeDistance.topAnchor.constraint(equalTo: topAnchor, constant: 255),
            cafeDistance.heightAnchor.constraint(equalToConstant: 24),
            
            cafeLocation.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 17.5),
            cafeLocation.topAnchor.constraint(equalTo: topAnchor, constant: 281),
            
            cafeConfusion.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 19),
            cafeConfusion.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -19),
            cafeConfusion.topAnchor.constraint(equalTo: topAnchor, constant: 313),
            cafeConfusion.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            
            favoriteImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 306.17),
            favoriteImage.topAnchor.constraint(equalTo: topAnchor, constant: 252),
          
        ])
    }
}
