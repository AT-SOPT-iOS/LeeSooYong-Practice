//
//  LoginViewController.swift
//  SOPT36_WEEK1
//
//  Created by LEESOOYONG on 4/9/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 85, y:161, width: 236, height: 44))
        label.text = "동네라서 가능한 모든것\n당근에서 가까운 이웃과 함께해요."
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont(name: "Pretendard-Black", size: 16)
        return label
    } ()
    
    let idTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 35, y: 276, width: 335, height: 52))
        textField.placeholder = "아이디"
        textField.font = UIFont(name: "Pretendard-Regular", size: 14)
        textField.layer.cornerRadius = 3
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        return textField
    } ()
    
    let passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 35, y: 335, width: 335, height: 52))
        textField.placeholder = "비밀번호"
        textField.font = UIFont(name: "Pretendard-Regular", size: 14)
        textField.layer.cornerRadius = 3
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        return textField
    } ()
    
    var loginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 35, y: 422, width: 332, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("로그인하기", for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Black", size: 18)
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(loginButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    @objc
    private func loginButtonDidTapped() {
//        presentToWelcomeVC()
        pushToWelcomeVC()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setLayout()
        
    }
    
    private func setLayout () {
        [titleLabel, idTextField, passwordTextField, loginButton].forEach{
            self.view.addSubview($0)
        }
    }
    
    private func presentToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .formSheet
//        welcomeViewController.id = idTextField.text
        welcomeViewController.setLabelText(id: idTextField.text)
        self.present(welcomeViewController, animated: true)
    }
    
    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
//        welcomeViewController.id = idTextField.text
        welcomeViewController.setLabelText(id: idTextField.text)
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
}
