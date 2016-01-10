//
//  GIOMarqueeLabel.swift
//  Pods
//
//  Created by Gigih Iski Prasetyawan on 10/01/2016.
//
//

import UIKit

public enum MarqueeType {
    case RunningLeft
    case RunningRight
    case RunningUp
    case RunningDown
}

protocol GIOMarqueeDelegate {
    func onClick ()
    func onStop ()
    func onStart ()
}

public class GIOMarqueeLabel: UILabel {
    var type: MarqueeType?
    var status: Bool? = false
    public var message: String?
    
    var delegate: GIOMarqueeDelegate?

    public func startAnimation(type: MarqueeType? = .RunningLeft, time: Float) {
        if self.status == false {
            self.status = true
            if let message = self.message {
                self.text = message
            }
        }
    }
    
    public func stopAnimation() {
        if self.status == true {
            self.status = false
        }
    }
}
