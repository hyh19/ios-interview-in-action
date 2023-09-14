//
//  ViewController.swift
//  Autolayout
//
//  Created by 珲少 on 2019/12/3.
//  Copyright © 2019 jaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 用代码直接创建约束对象
//        // 关闭将Autoresizing转换成约束的功能
//        self.view.translatesAutoresizingMaskIntoConstraints = false
//        let v1 = UIView()
//        v1.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addSubview(v1)
//        v1.backgroundColor = UIColor.red
//        // 做边距约束
//        let c1 = NSLayoutConstraint(item: v1, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 30)
//        // 右边距约束
//        let c2 = NSLayoutConstraint(item: v1, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1, constant: -30)
//        // 上边距约束
//        let c3 = NSLayoutConstraint(item: v1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 100)
//        // 高度约束
//        let c4 = NSLayoutConstraint(item: v1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
//        // 激活约束
//        NSLayoutConstraint.activate([c1, c2, c3, c4])
        
//        self.view.translatesAutoresizingMaskIntoConstraints = false
//        let v1 = UIView()
//        v1.backgroundColor = UIColor.red
//        let v2 = UIView()
//        v2.backgroundColor = UIColor.blue
//        let v3 = UIView()
//        v3.backgroundColor = UIColor.green
//        v1.translatesAutoresizingMaskIntoConstraints = false;
//        v2.translatesAutoresizingMaskIntoConstraints = false;
//        v3.translatesAutoresizingMaskIntoConstraints = false;
//        self.view.addSubview(v1)
//        self.view.addSubview(v2)
//        self.view.addSubview(v3)
//        // 使用VFL创建约束对象
//        let spec = 10;
//        let hArray = NSLayoutConstraint.constraints(withVisualFormat: "H:|-spec-[v1]-spec-[v2(==v1)]-spec-[v3(==v2)]-spec-|", options: [.alignAllTop, .alignAllBottom], metrics: ["spec": spec], views: ["v1":v1, "v2":v2, "v3":v3])
//        let vArray = NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[v1(100@1000)]", metrics: nil, views: ["v1":v1])
//        NSLayoutConstraint.activate(hArray)
//        NSLayoutConstraint.activate(vArray)
        
        self.view.translatesAutoresizingMaskIntoConstraints = false
        let v1 = UIView()
        v1.backgroundColor = UIColor.red
        let v2 = UIView()
        v2.backgroundColor = UIColor.blue
        let v3 = UIView()
        v3.backgroundColor = UIColor.green
        v1.translatesAutoresizingMaskIntoConstraints = false;
        v2.translatesAutoresizingMaskIntoConstraints = false;
        v3.translatesAutoresizingMaskIntoConstraints = false;
        self.view.addSubview(v1)
        self.view.addSubview(v2)
        self.view.addSubview(v3)
        
        v1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        v1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        v1.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        
        v2.topAnchor.constraint(equalTo: v1.topAnchor).isActive = true
        v2.leftAnchor.constraint(equalTo: v1.rightAnchor, constant: 20).isActive = true
        v2.bottomAnchor.constraint(equalTo: v1.bottomAnchor).isActive = true
        v2.widthAnchor.constraint(equalTo: v1.widthAnchor).isActive = true
        
        v3.topAnchor.constraint(equalTo: v1.topAnchor).isActive = true
        v3.leftAnchor.constraint(equalTo: v2.rightAnchor, constant: 20).isActive = true
        v3.bottomAnchor.constraint(equalTo: v1.bottomAnchor).isActive = true
        v3.widthAnchor.constraint(equalTo: v1.widthAnchor).isActive = true
        v3.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20).isActive = true
        
        
    }
}

