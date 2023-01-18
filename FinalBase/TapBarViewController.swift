//
//  TapBarViewController.swift
//  cazait_seok
//
//  Created by 강석호 on 2023/01/14.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       // 인스턴스화
        let vc1 = ViewController()
        let vc2 = MyPageViewController()
        let vc3 = MoreViewController()
        
        // 각 tab bar의 viewcontroller 타z이틀 설정
        vc1.title = ""
        vc1.tabBarItem.image = UIImage(named: "home")
        vc2.title = ""
        vc2.tabBarItem.image = UIImage(named: "person")
        vc3.title = ""
        vc3.tabBarItem.image = UIImage(named: "plus")
        
        // 위에 타이틀 text를 항상 크게 보이게 설정
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        
       // navigationController의 root view 설정
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3], animated: false)
    }
}
