//
//  AutoLayoutViewController.swift
//  SOPT36_WEEK2
//
//  Created by LEESOOYONG on 4/12/25.
//

import UIKit

final class AutoLayoutViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setLayout()
    }
    
    private func setLayout() {
        let width = UIScreen.main.bounds.width / 2
        let height = UIScreen.main.bounds.height / 4
        
        [yellow, green, black, blue].forEach {
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([yellow.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            yellow.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            yellow.widthAnchor.constraint(equalToConstant: width),
            yellow.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([green.topAnchor.constraint(equalTo: self.yellow.bottomAnchor, constant: 0),
                                     green.leadingAnchor.constraint(equalTo: self.yellow.trailingAnchor, constant: 0),
            green.widthAnchor.constraint(equalToConstant: width),
            green.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([black.topAnchor.constraint(equalTo: self.green.bottomAnchor, constant: 0),
            black.leadingAnchor.constraint(equalTo: self.green.leadingAnchor, constant: -width), // green 기준으로 좌측이므로 -를 해줘야 한다.
            black.widthAnchor.constraint(equalToConstant: width),
            black.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([blue.topAnchor.constraint(equalTo: self.black.bottomAnchor, constant: 0),
            blue.leadingAnchor.constraint(equalTo: self.black.trailingAnchor, constant: 0),
            blue.widthAnchor.constraint(equalToConstant: width),
            blue.heightAnchor.constraint(equalToConstant: height)])
    }
    
    var yellow: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    var green: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    var black: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    var blue: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
}
