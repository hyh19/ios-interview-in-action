//
//  MyView.swift
//  CALayerDemo
//
//  Created by 珲少 on 2019/12/8.
//  Copyright © 2019 jaki. All rights reserved.
//

import UIKit

class MyView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    static override var layerClass: AnyClass {
        return CAGradientLayer.classForCoder()
    }

}
