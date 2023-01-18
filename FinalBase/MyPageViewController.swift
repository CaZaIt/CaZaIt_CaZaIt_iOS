//
//  MyPageViewController.swift
//  cazait_seok
//
//  Created by 강석호 on 2023/01/14.
//

import Foundation
import UIKit

//struct User {
//    let profile = UIImage()
//    let name = String
//}



final class MyPageViewController: UIViewController {
    
    
    private let Label_1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = UIColor(r: 141, g: 96, b: 96)
        label.textAlignment = .center
        label.text = "로그인 하세요"
        label.numberOfLines = 1
        return label
    }()
    
    private let Button_1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "right_arrow"), for: .normal)
        button.clipsToBounds = true
        return button
    }()

    private let payView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(r: 141, g: 96, b: 96)
        view.distribution = .fill
        view.spacing = 1
        view.axis = .vertical
        view.alignment = .center
        view.layer.cornerRadius = 15
        return view
    }()
    
    
    private let Label_2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .left
        label.text = "카자잇 페이"
        label.numberOfLines = 1
        return label
    }()
    
    private let Label_3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        label.textColor = .white
        label.textAlignment = .right
        label.text = "1111 ￦"
        label.numberOfLines = 1
        return label
    }()
    
    private let Label_4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .right
        label.text = " "
        label.numberOfLines = 1
        return label
    }()
    
//    let user: [User] = [User(profile: UIImage(named: "credit_card")!, name: "결제 내역"),
//                            User(profile: UIImage(named: "credit_card")!, name: "결제 내역"),
//                            User(profile: UIImage(named: "credit_card")!, name: "결제 내역"),
//                            User(profile: UIImage(named: "credit_card")!, name: "결제 내역"),
//                            User(profile: UIImage(named: "credit_card")!, name: "결제 내역") ]
//
//    let tableView: UITableView = {
//            let tableView = UITableView()
//            tableView.rowHeight = 100
//            return tableView
//        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(r: 250, g: 240, b: 221)
        
        self.view.addSubview(self.Label_1)
        self.view.addSubview(self.Button_1)
        
        self.view.addSubview(self.payView)
        
        self.payView.addArrangedSubview(Label_2)
        self.payView.addArrangedSubview(Label_3)
        self.payView.addArrangedSubview(Label_4)
        
        self.payView.setCustomSpacing(10, after: Label_2)
        
//        attribute()
//        setTable()
        
        
        NSLayoutConstraint.activate([
            self.Label_1.heightAnchor.constraint(equalToConstant: 30),
            self.Label_1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.Label_1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150),
            
            self.Button_1.heightAnchor.constraint(equalToConstant: 30),
            self.Button_1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 160),
            self.Button_1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150),
            
            self.payView.heightAnchor.constraint(equalToConstant: 150),
            self.payView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.payView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            self.payView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 190),
            
            self.Label_2.leadingAnchor.constraint(equalTo: self.payView.leadingAnchor, constant: 13),
            self.Label_2.topAnchor.constraint(equalTo: self.payView.topAnchor),
            
            self.Label_3.leadingAnchor.constraint(equalTo: self.payView.leadingAnchor),
            self.Label_3.trailingAnchor.constraint(equalTo: self.payView.trailingAnchor,constant: -30),
            
            self.Label_4.leadingAnchor.constraint(equalTo: self.payView.leadingAnchor, constant: 270),
            self.Label_4.trailingAnchor.constraint(equalTo: self.payView.trailingAnchor),
            

            ])
        
        
    }
//    func attribute() {
//            tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.cellId)
//            tableView.delegate = self
//            tableView.dataSource = self
//        }
//    func setTable(){
//            view.addSubview(tableView)
//            tableView.translatesAutoresizingMaskIntoConstraints = false
//            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 300).isActive = true
//            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
//            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//        }
//    }



//extension MyPageViewController:  UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return user.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.cellId, for: indexPath) as! CustomCell
//        
//        cell.profile.image = user[indexPath.row].profile
//        cell.name.text = user[indexPath.row].name
//        
//        return cell
//    }
//}
}
