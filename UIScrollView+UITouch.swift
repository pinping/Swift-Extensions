//
//  UIScrollView+UITouch.swift
//  DateTix-Swift
//
//  Created by pinping on 16/3/5.
//  Copyright © 2016年 pinping. All rights reserved.
//

import Foundation

extension UIScrollView {
    
    override public func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        self.nextResponder()?.touchesBegan(touches, withEvent: event)
    }
    
    override public func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?){
        self.nextResponder()?.touchesMoved(touches, withEvent: event)
    }
    
    override public func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?){
        self.nextResponder()?.touchesEnded(touches, withEvent: event)
    }
    
}

