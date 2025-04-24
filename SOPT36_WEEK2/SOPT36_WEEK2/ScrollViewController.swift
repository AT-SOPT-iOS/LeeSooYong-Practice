//
//  ScrollViewController.swift
//  SOPT36_WEEK2
//
//  Created by LEESOOYONG on 4/12/25.
//
import UIKit

final class ScrollViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        redView.backgroundColor = .red
        orangeView.backgroundColor = .orange
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        purpleView.backgroundColor = .purple
        
        setLayout()
    }
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private let redView = UIView()
    private let orangeView = UIView()
    private let yellowView = UIView()
    private let greenView = UIView()
    private let blueView = UIView()
    private let purpleView = UIView()

    private func setLayout() {
        
        let width = UIScreen.main.bounds.width / 2
        let height = UIScreen.main.bounds.height / 3
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(scrollView)
        
        scrollView.addSubview(contentView)
        [redView, orangeView, yellowView, greenView, blueView, purpleView].forEach {
            contentView.addSubview($0)
        }
       
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),

            contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor)
        ])

        
        let heightConstraint = contentView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor)
        heightConstraint.priority = .defaultLow
        heightConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: contentView.topAnchor),
            redView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            redView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            redView.heightAnchor.constraint(equalToConstant: height),
            redView.widthAnchor.constraint(equalToConstant: width)
        ])
        
        NSLayoutConstraint.activate([
            orangeView.topAnchor.constraint(equalTo: contentView.topAnchor),
            orangeView.leadingAnchor.constraint(equalTo: redView.trailingAnchor),
//            orangeView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            orangeView.heightAnchor.constraint(equalToConstant: height),
            orangeView.widthAnchor.constraint(equalToConstant: width)
        ])
        
        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: redView.bottomAnchor),
            yellowView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            yellowView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            yellowView.heightAnchor.constraint(equalToConstant: height),
            yellowView.widthAnchor.constraint(equalToConstant: width)
        ])
       
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: orangeView.bottomAnchor),
//            greenView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            greenView.heightAnchor.constraint(equalToConstant: height),
            greenView.widthAnchor.constraint(equalToConstant: width)
        ])

        NSLayoutConstraint.activate([
//            blueView.topAnchor.constraint(equalTo: yellowView.bottomAnchor),
            blueView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            blueView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            blueView.heightAnchor.constraint(equalToConstant: height),
            blueView.widthAnchor.constraint(equalToConstant: width),
            blueView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
//            purpleView.topAnchor.constraint(equalTo: contentView.topAnchor),
//            purpleView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            purpleView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            purpleView.heightAnchor.constraint(equalToConstant: height),
            purpleView.widthAnchor.constraint(equalToConstant: width),
            purpleView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
}



