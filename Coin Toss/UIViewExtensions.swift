//
//  UIViewExtensions.swift
//  Coin Toss
//
//  Created by Paul Wochnick on 12/7/15.
//  Copyright © 2015 Paul Wochnick. All rights reserved.
//

//: https://www.andrewcbancroft.com/2014/10/15/rotate-animation-in-swift/

import UIKit

extension UIView {
    func rotate360Degrees(duration: CFTimeInterval = 0.15, completionDelegate: AnyObject? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 2.0)
        rotateAnimation.duration = duration
        
        if let delegate: AnyObject = completionDelegate {
            rotateAnimation.delegate = delegate
        }
        self.layer.addAnimation(rotateAnimation, forKey: nil)
    }
}
