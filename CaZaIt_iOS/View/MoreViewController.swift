//
//  MoreViewController.swift
//  cazait_seok
//
//  Created by 강석호 on 2023/01/14.
//


import Foundation
import UIKit



final class MoreViewController: UIViewController {
    
    let table = UITableView()
    let testArr = ["공지사항", "앱 설정","고객센터","약관 및 정책"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .gray
        table.delegate = self
        table.dataSource = self
        
        attribute()
        layout()
    }
    
    func layout() {
        view.addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        table.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        table.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        table.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
    func attribute() {
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}



extension MoreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = testArr[indexPath.row]
        
        return cell
    }
    
    
}
