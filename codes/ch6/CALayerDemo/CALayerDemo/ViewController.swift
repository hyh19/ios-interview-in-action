//
//  ViewController.swift
//  CALayerDemo
//
//  Created by 珲少 on 2019/12/8.
//  Copyright © 2019 jaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let layer = CALayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        let view = UIView(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 100))
//        self.view.addSubview(view)
////        view.backgroundColor = UIColor.red
////        view.layer.backgroundColor = UIColor.red.cgColor
//
//        layer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        layer.backgroundColor = UIColor.blue.cgColor
//        view.layer.addSublayer(layer)
//
////        layer.beginTime = CACurrentMediaTime() + 2
//        layer.duration = CACurrentMediaTime() + 3
//        layer.timeOffset = 1
//        layer.speed = 0
//        print(layer.timeOffset)
////        layer.speed = 0.25
////        layer.repeatCount = 3
////        layer.autoreverses = true
//        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
////            print("m",self.layer.model().frame.origin.x)
////            print("p",self.layer.presentation()?.frame.origin.x ?? 0)
//        }
//        timer.fire()
//        emitterLayer()
//        grandientLayer()
//        replicatorLayer()
//        shapeLayer()

    }
    
    func shapeLayer() {
        let layer = CAShapeLayer()
        layer.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        // 设置填充颜色
        layer.fillColor = UIColor.red.cgColor
        // 设置线宽
        layer.lineWidth = 3
        // 设置线条颜色
        layer.strokeColor = UIColor.blue.cgColor
        // 绘制路径设置
        let path = UIBezierPath(arcCenter: layer.position,
        radius: 100,
        startAngle: 0,
        endAngle: CGFloat(2 * Float.pi),
            clockwise: true).cgPath
        layer.path = path
        layer.position = self.view.center
        self.view.layer.addSublayer(layer)
    }
    
    func replicatorLayer() {
        let layer = CAReplicatorLayer()
        // 设置复制出的图层实例个数
        layer.instanceCount = 8
        // 设置每次复制的3D变换
        layer.instanceTransform = CATransform3DMakeTranslation(40, 40, 0)
        // 设置颜色
        layer.instanceColor = UIColor.red.cgColor
        // 设置每次复制的颜色偏移
        layer.instanceRedOffset = -0.1
        
        let ins = CALayer()
        ins.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        ins.backgroundColor = UIColor.white.cgColor
        layer.addSublayer(ins)
        self.view.layer.addSublayer(layer)
    }
    
    func grandientLayer() {
        let layer = CAGradientLayer()
        layer.colors = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor]
        layer.locations = [0.2, 0.5, 0.8]
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.endPoint = CGPoint(x:0.5, y:1)
        layer.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        self.view.layer.addSublayer(layer)
    }
    
    func emitterLayer() {
        // 图层设置
        let layer = CAEmitterLayer()
        layer.bounds = self.view.bounds
        layer.anchorPoint = CGPoint(x: 0, y: 0)
        layer.backgroundColor = UIColor.black.cgColor
        // 设置粒子的发射位置
        layer.emitterPosition = CGPoint(x: self.view.bounds.size.width / 2, y: self.view.bounds.size.height / 2)
        // 设置渲染模式
        layer.renderMode = .additive
        // 设置粒子的默认生成速度
        layer.birthRate = 4
        // 设置粒子的大小
        layer.emitterSize = CGSize(width: 5, height: 5)
        
        // 进行粒子属性配置
        let cell = CAEmitterCell()
        // 发射角度 z轴
        cell.emissionLatitude = CGFloat(-Double.pi / 2)
        // 发射角度 x-y平面
        cell.emissionLongitude = 0
        // 粒子的内容 (必须设置)
        cell.contents = UIImage(named: "img")?.cgImage
        // 粒子存在时长
        cell.lifetime = 1.6
        // 粒子的生成速度
        cell.birthRate = 100
        // 竖直方向速度
        cell.velocity = 400
        // 速度随机区间
        cell.velocityRange = 100
        // y轴方向x加速度
        cell.yAcceleration = 250
        // 发射角度随机区间
        cell.emissionRange = CGFloat(Double.pi / 4)
        // 颜色
        cell.color = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5).cgColor
        // 颜色随机区间
        cell.redRange = 0.5
        cell.blueRange = 0.5
        cell.greenRange = 0.5
        layer.emitterCells = [cell]
        
        self.view.layer.addSublayer(layer)
    }

//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        layer.frame = CGRect(x: Int(arc4random() % UInt32((UIScreen.main.bounds.width - 100))), y: 0, width: 100, height: 100)
//    }
}

