//
//  UIView+FrameMethods.swift
//  DateTix-Swift
//
//  Created by pinping on 15/12/27.
//  Copyright © 2015年 pinping. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    // MARK: - Move methods
    func moveHorizontal(horizontal: CGFloat, vertical: CGFloat) {
        let origionRect: CGRect = self.frame
        let newRect: CGRect = CGRectMake(origionRect.origin.x+horizontal,origionRect.origin.y+vertical,origionRect.size.width,origionRect.size.height)
        self.frame = newRect
        
    }
    
    func moveHorizontal(horizontal: CGFloat, vertical: CGFloat, addWidth widthAdded: CGFloat, addHeight heightAdded: CGFloat) {
        let origionRect: CGRect = self.frame
        let newRect: CGRect = CGRectMake(origionRect.origin.x+horizontal,origionRect.origin.y+vertical,origionRect.size.width+widthAdded,origionRect.size.height+heightAdded)
        self.frame = newRect
        
    }
    
    func moveToHorizontal(horizontal: CGFloat, toVertical vertical: CGFloat) {
        let origionRect: CGRect = self.frame
        let newRect: CGRect = CGRectMake(horizontal,vertical,origionRect.size.width,origionRect.size.height)
        self.frame = newRect
        
    }
    
    func moveToHorizontal(horizontal: CGFloat, toVertical vertical: CGFloat, setWidth width: CGFloat, setHeight height: CGFloat) {
        let newRect: CGRect = CGRectMake(horizontal,vertical,width,height)
        self.frame = newRect
        
    }
    
    // MARK: - Set X/Y
    func setX(x: CGFloat, y: CGFloat) {
        let origionRect: CGRect = self.frame
        let newRect: CGRect = CGRectMake(x,y,origionRect.size.width,origionRect.size.height)
        self.frame = newRect
        
    }
    
    func setX(x: CGFloat) {
        let origionRect: CGRect = self.frame
        let newRect: CGRect = CGRectMake(x,origionRect.origin.y,origionRect.size.width,origionRect.size.height)
        self.frame = newRect
        
    }
    
    func setY(y: CGFloat) {
        let origionRect: CGRect = self.frame
        let newRect: CGRect = CGRectMake(origionRect.origin.x,y,origionRect.size.width,origionRect.size.height)
        self.frame = newRect
        
    }
    
    // MARK: - Get X/Y
    func getX() -> CGFloat {
        return self.frame.origin.x
        
    }
    
    func getY() -> CGFloat {
        return self.frame.origin.y
        
    }
    
    // MARK: - Set width/height
    func setWidth(width: CGFloat, height: CGFloat) {
        let origionRect: CGRect = self.frame
        let newRect: CGRect = CGRectMake(origionRect.origin.x,origionRect.origin.y,width,height)
        self.frame = newRect
        
    }
    
    func setWidth(width: CGFloat) {
        let origionRect: CGRect = self.frame
        let newRect: CGRect = CGRectMake(origionRect.origin.x,origionRect.origin.y,width,origionRect.size.height)
        self.frame = newRect
        
    }
    
    func setHeight(height: CGFloat) {
        let origionRect: CGRect = self.frame
        let newRect: CGRect = CGRectMake(origionRect.origin.x,origionRect.origin.y,origionRect.size.width,height)
        self.frame = newRect
        
    }
    
    // MARK: - Get width/height
    func getWidth() -> CGFloat {
        return self.frame.size.width
        
    }
    
    func getHeight() -> CGFloat {
        return self.frame.size.height
        
    }
    
    // MARK: - Add width/height
    func addWidth(widthAdded: CGFloat, addHeight heightAdded: CGFloat) {
        let originRect: CGRect = self.frame
        let newWidth: CGFloat = originRect.size.width+widthAdded
        let newHeight: CGFloat = originRect.size.height+heightAdded
        let newRect: CGRect = CGRectMake(originRect.origin.x,originRect.origin.y,newWidth,newHeight)
        self.frame = newRect
        
    }
    
    func addWidth(widthAdded: CGFloat) {
        self.addWidth(widthAdded, addHeight: 0)
        
    }
    
    func addHeight(heightAdded: CGFloat) {
        self.addWidth(0, addHeight: heightAdded)
        
    }
    
    // MARK: - Set corner radius
    func setCornerRadius(radius: CGFloat) {
        self.setCornerRadius(radius, borderColor:UIColor.clearColor())
    }

    func setCornerRadius(radius: CGFloat, borderColor: UIColor) {
        self.layer.borderColor = borderColor.CGColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        self.clipsToBounds = true
        
    }
//
//    func frameInWindow() -> CGRect {
//        let frameInWindow: CGRect = self.superview!.convertRect(self.frame, toView: self.window)
//        return frameInWindow
//    }
    
}


