//
//  ViewController.swift
//  CoreAnimation
//
//  Created by 珲少 on 2019/12/15.
//  Copyright © 2019 jaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let animation = CABasicAnimation(keyPath: "backgroundColor")
//        animation.fromValue = UIColor.red.cgColor
//        animation.byValue = UIColor.green.cgColor
//        animation.duration = 3
//        self.view.layer.add(animation, forKey: "Animation")
        
//        let animation = CAKeyframeAnimation(keyPath: "backgroundColor")
//        animation.values = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor]
//        animation.keyTimes = [NSNumber(value: 0),NSNumber(value: 0.5),NSNumber(value: 0.8)]
//        animation.duration = 10
//        self.view.layer.add(animation, forKey: "Animation")
        self.view.layer.backgroundColor = UIColor.red.cgColor
        let animation = CATransition()
        animation.type = CATransitionType.push
        animation.subtype = CATransitionSubtype.fromTop
        animation.duration = 3
        self.view.layer.add(animation, forKey: "Animation")
        
    }


}

