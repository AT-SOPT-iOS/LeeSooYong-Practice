//
//  Untitled.swift
//  SOPT36_WEEK3
//
//  Created by LEESOOYONG on 4/26/25.
//

import UIKit
import SnapKit

final class ChatViewController: UIViewController {
    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
    }
    
    private func setLayout() {
        self.view.addSubview(tableView)
        
        tableView.snp.makeConstraints { $0.edges.equalToSuperview() }
    }
}
