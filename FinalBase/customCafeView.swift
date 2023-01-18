//  customCafeView1.swift
//  practice_scrollview
//
//  Created by 홍서린 on 2023/01/13.
//
import UIKit
//롬곡
class view1: UICollectionViewCell {
   
    let firstImage: UIImageView = {
        let imageView = UIImageView()
       
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "firstpcx1")
        imageView.frame = CGRect(x:0, y:0, width: 343, height: 226)
       
        return imageView
    }()
    
    let firstName: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "롬곡"
        label.numberOfLines = 1
       
        return label
    }()
    
    let firstDistance: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "220m"
        label.numberOfLines = 1
        
        return label
    }()
    
    let firstLocation: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "서울특별시 광진구 광나루로 375-1 2층(군자동)"
        label.numberOfLines = 1
      
        return label
    }()
    
    let firstConfusion: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = UIColor(r: 25, g: 226, b: 69)
        label.textAlignment = .center
        label.text = "보통"
        label.layer.cornerRadius = 10
        label.layer.borderWidth = 0.5
        label.layer.borderColor = UIColor.brown.cgColor
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
        self.addSubview(firstImage)
        self.addSubview(firstName)
        self.addSubview(firstDistance)
        self.addSubview(firstLocation)
        self.addSubview(firstConfusion)
        self.addSubview(favoriteImage)
        
        NSLayoutConstraint.activate([
            //롬곡 제약조건
            firstImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            firstImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            firstImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            
            firstName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 17.5),
            firstName.topAnchor.constraint(equalTo: topAnchor, constant: 252),
            firstName.heightAnchor.constraint(equalToConstant: 24),
            
            firstDistance.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 61.5),
            firstDistance.topAnchor.constraint(equalTo: topAnchor, constant: 255),
            firstDistance.heightAnchor.constraint(equalToConstant: 24),
            
            firstLocation.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 17.5),
            firstLocation.topAnchor.constraint(equalTo: topAnchor, constant: 281),
            
            firstConfusion.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 19),
            firstConfusion.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -19),
            firstConfusion.topAnchor.constraint(equalTo: topAnchor, constant: 313),
            firstConfusion.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            
            favoriteImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 306.17),
            favoriteImage.topAnchor.constraint(equalTo: topAnchor, constant: 252),
          
        ])
    }
}
