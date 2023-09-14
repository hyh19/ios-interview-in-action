//
//  ViewController.swift
//  Capacity
//
//  Created by 珲少 on 2020/1/14.
//  Copyright © 2020 jaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    class ViewControllerCell: UITableViewCell {
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            self.setupUI()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupUI() {
            for i in 0 ... 2000 {
                let v = UIView(frame: CGRect(x:0, y: 0, width: 10, height: 10))
                v.backgroundColor = UIColor.green
                v.isOpaque = true
                self.contentView.addSubview(v)
            }
        }
    }
    
    
    lazy var tableView:UITableView! = {
        let tableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.register(ViewControllerCell.classForCoder(), forCellReuseIdentifier: "ViewControllerCell")
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ViewControllerCell", for: indexPath)
        return cell
    }
    
}

