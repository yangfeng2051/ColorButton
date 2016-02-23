//
//  ColorButton.swift
//  ColorButton
//
//  Created by yangfeng on 16/2/23.
//  Copyright © 2016年 yangfeng. All rights reserved.
//

import UIKit

public enum GradientType {
    case topToBottom,leftToRight, upleftTolowRight, uprightTolowLeft
}

class ColorButton : UIButton {
    
    init(frame: CGRect, FromColorArray colorArray: [UIColor], ByGradientType gradientType: GradientType) {
        super.init(frame: frame)
        let backImage: UIImage = self.buttonImageFromColors(colorArray, ByGradientType: gradientType)
        self.setBackgroundImage(backImage, forState:.Normal)
        self.layer.cornerRadius = 4.0
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.clearColor()

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buttonImageFromColors(colors: [UIColor], ByGradientType gradientType: GradientType) -> UIImage {
        let ar: NSMutableArray = NSMutableArray()
        for c in colors {
            ar.addObject(c.CGColor)
        }
        UIGraphicsBeginImageContextWithOptions(self.frame.size, true, 1)
        let context = UIGraphicsGetCurrentContext()
        CGContextSaveGState(context)
        let colorSpace = CGColorGetColorSpace((colors.last)?.CGColor)
        let gradient = CGGradientCreateWithColors(colorSpace, ar, nil)
        let start: CGPoint
        let end: CGPoint
        switch gradientType {
        case .topToBottom:
            
            start = CGPointMake(0.0, 0.0)
            end = CGPointMake(0.0, self.frame.size.height)
            break
        case .leftToRight:
            
            start = CGPointMake(0.0, 0.0)
            end = CGPointMake(self.frame.size.width, 0.0)
            break
        case .upleftTolowRight:
            
            start = CGPointMake(0.0, 0.0)
            end = CGPointMake(self.frame.size.width, self.frame.size.height)
            break
        case .uprightTolowLeft:
            
            start = CGPointMake(self.frame.size.width, 0.0)
            end = CGPointMake(0.0, self.frame.size.height)
            break
        }
        CGContextDrawLinearGradient(context, gradient, start, end, .DrawsBeforeStartLocation)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        CGContextRestoreGState(context)
        UIGraphicsEndImageContext()
        return image
    }
    
}


