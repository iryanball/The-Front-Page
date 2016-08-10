//
//  CircleView.swift
//  The Front Page
//
//  Created by Ryan Ball on 09/08/2016.
//  Copyright © 2016 Ryan Ball. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
}
