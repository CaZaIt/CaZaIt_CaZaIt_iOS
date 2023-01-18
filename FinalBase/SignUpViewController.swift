//
//  MainViewController.swift
//  cazait_seok
//
//  Created by 강석호 on 2023/01/09.
//

import Foundation
import UIKit




final class SignUpViewController: UIViewController {
    
    
    //아이디 Label
    private let idLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.textColor = UIColor(r: 141, g: 96, b: 96)
        label.textAlignment = .center
        label.text = "    아이디"
        label.numberOfLines = 1
        return label
    }()
    
    //아이디 TextField
    private let idField: InsetTextField = {
        let textField = InsetTextField()
        textField.insetX = 16
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "예: kazait123"
        textField.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 15
        textField.clipsToBounds = true
        return textField
    }()
    

    
    //아이디 중복확인 버튼
    private let idButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("중복확인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.554, green: 0.376, blue: 0.376, alpha: 1)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()
    
    
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        label.textColor = UIColor(r: 141, g: 96, b: 96)
        label.textAlignment = .left
        label.text = "      6자 이상의 영문 혹은 영문과 숫자를 조합"
        label.numberOfLines = 1
        return label
    }()
    
    //비밀번호 Label
    private let pwLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.textColor = UIColor(r: 141, g: 96, b: 96)
        label.textAlignment = .center
        label.text = "    비밀번호"
        label.numberOfLines = 1
        return label
    }()
    
    //비밀번호 TextField
    private let pwField: InsetTextField = {
        let textField = InsetTextField()
        textField.insetX = 16
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "비밀번호를 입력해주세요"
        textField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 15
        textField.clipsToBounds = true
        return textField
    }()
    
    //비밀번호 확인 Label
    private let pwLabel_1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.textColor = UIColor(r: 141, g: 96, b: 96)
        label.textAlignment = .center
        label.text = "    비밀번호 확인"
        label.numberOfLines = 1
        return label
    }()
    
    //비밀번호 확인 TextField
    private let pwField_1: InsetTextField = {
        let textField = InsetTextField()
        textField.insetX = 16
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "비밀번호를 한 번 더 입력해주세요"
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 15
        textField.clipsToBounds = true
        return textField
    }()
    
    //이메일 Label
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.textColor = UIColor(r: 141, g: 96, b: 96)
        label.textAlignment = .center
        label.text = "    이메일"
        label.numberOfLines = 1
        return label
    }()
    
    //이메일 TextLabel
    private let emailField: InsetTextField = {
        let textField = InsetTextField()
        textField.insetX = 16
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "예: kazait123@naver.com"
        textField.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 15
        textField.clipsToBounds = true
        return textField
    }()
    
    //이메일 중복확인 버튼
    private let emailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("중복확인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.554, green: 0.376, blue: 0.376, alpha: 1)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()
    
    //가입하기 버튼
    private let joinButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("가입하기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.554, green: 0.376, blue: 0.376, alpha: 1)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //back 없애기
        self.navigationController?.navigationBar.topItem?.title = ""
        
        self.title = "회원가입"
        // 네비게이션 바 배경색상
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.backgroundColor = UIColor(r: 141, g: 96, b: 96)
        navigationBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance
        navigationController!.navigationBar.scrollEdgeAppearance = navigationBarAppearance
        
        // 뒤로가기 아이콘 색상
        self.navigationController?.navigationBar.tintColor = .white
        self.view.backgroundColor = UIColor(r: 250, g: 240, b: 221)
        self.navigationController?.navigationBar.isHidden = true
        
        //뷰안에 각 오브젝트 넣기
        self.view.addSubview(self.idLabel)
        self.view.addSubview(self.idField)
        self.view.addSubview(self.idButton)
        self.view.addSubview(self.descriptionLabel)
        self.view.addSubview(self.pwLabel)
        self.view.addSubview(self.pwField)
        self.view.addSubview(self.pwLabel_1)
        self.view.addSubview(self.pwField_1)
        self.view.addSubview(self.emailLabel)
        self.view.addSubview(self.emailField)
        self.view.addSubview(self.emailButton)
        self.view.addSubview(self.joinButton)
        
        
        //오토레이아웃 설정
        NSLayoutConstraint.activate([
            self.idLabel.heightAnchor.constraint(equalToConstant: 30),
            self.idLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.idLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150),
            
            self.idField.heightAnchor.constraint(equalToConstant: 40),
            self.idField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.idField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -150),
            self.idField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 180),
            
            self.idButton.heightAnchor.constraint(equalToConstant: 40),
            self.idButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 250),
            self.idButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            self.idButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 180),
            
            self.descriptionLabel.heightAnchor.constraint(equalToConstant: 30),
            self.descriptionLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.descriptionLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -150),
            self.descriptionLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 214),
            
            self.pwLabel.heightAnchor.constraint(equalToConstant: 30),
            self.pwLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.pwLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 265),
            
            self.pwField.heightAnchor.constraint(equalToConstant: 40),
            self.pwField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.pwField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            self.pwField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 295),
            
            self.pwLabel_1.heightAnchor.constraint(equalToConstant: 30),
            self.pwLabel_1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.pwLabel_1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 365),
            
            self.pwField_1.heightAnchor.constraint(equalToConstant: 40),
            self.pwField_1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.pwField_1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            self.pwField_1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 395),
            
            self.emailLabel.heightAnchor.constraint(equalToConstant: 30),
            self.emailLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.emailLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 465),
            
            self.emailField.heightAnchor.constraint(equalToConstant: 40),
            self.emailField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.emailField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -150),
            self.emailField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 495),
            
            self.emailButton.heightAnchor.constraint(equalToConstant: 40),
            self.emailButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 250),
            self.emailButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            self.emailButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 495),
            
            
            self.joinButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 585),
            self.joinButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 150),
            self.joinButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -150),
            self.joinButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        //중복 확인 버튼 클릭시 이벤트 추가
        idButton.addTarget(self, action:#selector(buttonClicked_1), for: .touchUpInside)
        //중복 확인 버튼 클릭시 이벤트 추가
        emailButton.addTarget(self, action:#selector(buttonClicked_2), for: .touchUpInside)
        //가입하기 버튼 클릭시 이벤트 추가
        joinButton.addTarget(self, action:#selector(buttonClicked_3), for: .touchUpInside)
        
    }
    @objc func buttonClicked_1() {
            // if clicked btn, present alert
            let alert = UIAlertController(title: "사용 가능한 아이디입니다", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: nil))
//            alert.addAction(UIAlertAction(title: "DEFAULT", style: .default, handler: nil))
//            alert.addAction(UIAlertAction(title: "DESTRUCTIVE", style: .destructive, handler: nil))
            
            present(alert, animated: true, completion: nil)
        }
    
    @objc func buttonClicked_2() {
            // if clicked btn, present alert
            let alert = UIAlertController(title: "사용 가능한 이메일입니다", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: nil))
//            alert.addAction(UIAlertAction(title: "DEFAULT", style: .default, handler: nil))
//            alert.addAction(UIAlertAction(title: "DESTRUCTIVE", style: .destructive, handler: nil))
            
            present(alert, animated: true, completion: nil)
        }
        
    @objc func buttonClicked_3() {
            // if clicked btn, present alert
            let alert = UIAlertController(title: "가입이 완료되었습니다", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: nil))
//            alert.addAction(UIAlertAction(title: "DEFAULT", style: .default, handler: nil))
//            alert.addAction(UIAlertAction(title: "DESTRUCTIVE", style: .destructive, handler: nil))
            
            present(alert, animated: true, completion: nil)
        }
    
}
