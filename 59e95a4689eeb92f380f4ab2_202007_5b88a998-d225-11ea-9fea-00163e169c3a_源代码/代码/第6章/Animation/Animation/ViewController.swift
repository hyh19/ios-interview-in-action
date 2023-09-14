//
//  ViewController.swift
//  Animation
//
//  Created by 珲少 on 2019/12/7.
//  Copyright © 2019 jaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CALayerDelegate {
    
    let layer = MyLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        layer.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        layer.backgroundColor = UIColor.red.cgColor
        layer.delegate = self
        self.view.layer.addSublayer(layer)
        
        UIView.animate(withDuration: 3) {
            // 动画动作被重新应用
        }
    }
    
//    func action(for layer: CALayer, forKey event: String) -> CAAction? {
//        print(event)
//        let animation = CABasicAnimation(keyPath: "backgroundColor")
//
//        animation.toValue = UIColor.orange.cgColor
//        return NSNull()
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        CATransaction.begin()
        CATransaction.setAnimationDuration(3)
        CATransaction.setDisableActions(true)
        layer.frame = CGRect(x: 0, y: 200, width: 100, height: 100)
        layer.backgroundColor = UIColor.blue.cgColor
        
        CATransaction.commit()
    }
    

    func animation1() {
        let view = UIView(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
        view.backgroundColor = UIColor.red
        self.view.addSubview(view)
        
        let timer = Timer.scheduledTimer(withTimeInterval: 1/60.0, repeats: true) { (timer) in
            if (view.frame.origin.x < UIScreen.main.bounds.size.width - 100) {
                view.frame.origin.x = view.frame.origin.x + 1
            }
        }
        timer.fire()
    }
    
    func animation2() {
        let view = UIView(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
        view.backgroundColor = UIColor.red
        view.tag = 101
        self.view.addSubview(view)
        
        let displayLink = CADisplayLink(target: self, selector: #selector(refresh))
        displayLink.add(to: RunLoop.current, forMode: .common)
    }
    
    @objc func refresh() {
        let view = self.view.viewWithTag(101)!
        if (view.frame.origin.x < UIScreen.main.bounds.size.width - 100) {
            view.frame.origin.x = view.frame.origin.x + 1
        }
    }

}

