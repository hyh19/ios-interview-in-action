//
//  MyLayer.swift
//  Animation
//
//  Created by 珲少 on 2019/12/10.
//  Copyright © 2019 jaki. All rights reserved.
//

import UIKit

class MyLayer: CALayer {
    override func action(forKey event: String) -> CAAction? {
        print("MyLayer", event)
        return super.action(forKey: event)
    }
}
