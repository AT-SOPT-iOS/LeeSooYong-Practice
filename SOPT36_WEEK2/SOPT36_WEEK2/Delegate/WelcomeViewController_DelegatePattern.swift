//
//  WelcomeViewController_DelegatePattern.swift
//  SOPT36_WEEK2
//
//  Created by LEESOOYONG on 4/12/25.
//

import UIKit

final class WelcomeViewController_Delegatepattern: UIViewController {
    
    weak var delegate: DataBindDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.view.addSubview(backTomainButton)
        self.view.addSubview(backToLoginButton)
        self.view.addSubview(welcomeLabel)
        self.view.addSubview(imageView)
        
        bindID()
    }
    
    var id: String?
    
    private func bindID() {
        guard let id = id else {
            return
        }
        self.welcomeLabel.text = "\(id)님 \n반가워요!"
    }
    
    func setLabelText(id: String?) {
        self.id = id
    }
    
    let welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 69, y:250, width: 250, height: 150))
        label.text = "???님\n반가워요!"
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont(name: "Pretendard-Black", size: 25)
        return label
    } ()
    
    let imageView: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 120, y:87, width: 150, height: 150))
        image.image = UIImage(named: "image51")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var backTomainButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 35, y: 426, width: 335, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("메인으로", for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.layer.cornerRadius = 6
        return button
    } ()
    
    private lazy var backToLoginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 35, y: 498, width: 335, height: 58))
        button.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        button.setTitle("다시 로그인", for: .normal)
        button.layer.cornerRadius = 6
        button.setTitleColor(UIColor(red: 172/255, green: 176/255, blue: 185/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    } ()
    
    @objc
    private func backToLoginButtonDidTap() {
        
        if let id = id {
            delegate? .dataBind(id: id)
        }
        
        if self.navigationController == nil {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
}

protocol DataBindDelegate: AnyObject {
    func dataBind(id: String)
}


