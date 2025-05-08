//
//  ChangeViewController.swift
//  SOPT36_WEEK4
//
//  Created by LEESOOYONG on 5/8/25.
//

import UIKit
import SnapKit
import Then

final class ChangeViewController: UIViewController {
    
    private var nickname: String = ""
    private var userId: Int
    init(userId: Int) {
            self.userId = userId
            super.init(nibName: nil, bundle: nil)
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setLayout()
    }
    
    @objc private func changeButtonTap() {
        Task {
            do {
                let response = try await ChangeService.shared.PatchNickname(userId: self.userId, nickname: self.nickname)
                self.mnickLabel.text = "새로운 닉네임 : \(self.nickname)"
            } catch {
                self.mnickLabel.text = "닉네임 변경 실패: \(error.localizedDescription)"
            }
        }
    }

    
    @objc private func textFieldDidEditing(_ textField: UITextField) {
        self.nickname = textField.text ?? ""
    }
    
    private func setLayout() {
        self.view.addSubview(stackView)

        stackView.snp.makeConstraints {
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide).inset(40)
            $0.top.bottom.equalTo(self.view.safeAreaLayoutGuide).inset(200)
        }

        [nicknameTextField, mnickLabel, changeButton].forEach {
            self.stackView.addArrangedSubview($0)
        }
    }
    
    private let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .equalSpacing
        $0.spacing = 20
    }
    
    private lazy var nicknameTextField = UITextField().then {
        $0.addTarget(self, action: #selector(textFieldDidEditing(_:)), for: .editingChanged)
        $0.backgroundColor = .lightGray
        $0.placeholder = "변경할 닉네임을 입력하세요"
        $0.layer.cornerRadius = 8
        $0.setLeftPadding(12)
        $0.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    private lazy var mnickLabel = UILabel().then {
        $0.textColor = .black
        $0.textAlignment = .left
        $0.numberOfLines = 0
        $0.font = .systemFont(ofSize: 16)
    }
    
    private lazy var changeButton = UIButton().then {
        $0.addTarget(self,
                     action: #selector(changeButtonTap),
                     for: .touchUpInside)
        $0.backgroundColor = .blue
        $0.setTitle("닉네임 변경", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 8
        $0.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
}

private extension UITextField {
    func setLeftPadding(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
