//
//  ViewController.swift
//  DrawDemo
//
//  Created by 珲少 on 2020/1/9.
//  Copyright © 2020 jaki. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    override func draw(_ layer: CALayer, in ctx: CGContext) {
        self.addRect(ctx: ctx)
    }
    
    func addRect(ctx: CGContext) {
        // 设置线宽
        ctx.setLineWidth(3)
        // 设置线条颜色
        ctx.setStrokeColor(UIColor.red.cgColor)
        // 设置填充颜色
        ctx.setFillColor(UIColor.blue.cgColor)
        // 定义矩形
        ctx.addRect(CGRect(x: 100, y: 100, width: 100, height: 100))
        // 填充图形
        ctx.fillPath()
        // 定义矩形
        ctx.addRect(CGRect(x: 100, y: 100, width: 100, height: 100))
        // 绘制边框
        ctx.strokePath()
    }
    
    func addLine(ctx: CGContext) {
        // 设置线宽
        ctx.setLineWidth(3)
        // 设置颜色
        ctx.setStrokeColor(UIColor.red.cgColor)
        // 进行线段定义
        ctx.move(to: CGPoint(x: 100, y: 100))
        ctx.addLine(to: CGPoint(x: 200, y: 200))
        ctx.addLine(to: CGPoint(x: 200, y: 300))
        ctx.addLine(to: CGPoint(x: 100, y: 300))
        // 进行绘制
        ctx.strokePath()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let customView = CustomView(frame: self.view.bounds)
        self.view.addSubview(customView)
        customView.layer.setNeedsDisplay()
    }
}

