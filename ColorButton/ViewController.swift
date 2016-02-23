//
//  ViewController.swift
//  ColorButton
//
//  Created by yangfeng on 16/2/2.
//  Copyright © 2016年 yangfeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let colorArray1 = [UIColor(red: 0.6, green: 0.278, blue: 0.757, alpha: 1),UIColor(red: 0.641, green: 0.642, blue: 0.843, alpha: 1)];
        let button1 = ColorButton(frame: CGRectMake(30, 50, 220, 60), FromColorArray: colorArray1, ByGradientType:GradientType.leftToRight)
        button1.setTitle("确定", forState: .Normal)
        self.view.addSubview(button1)
        
        let colorArray2 = [UIColor(red: 0.3, green: 0.278, blue: 0.957, alpha: 1),UIColor(red: 0.114, green: 0.612, blue: 0.843, alpha: 1)];
        let button2 = ColorButton(frame: CGRectMake(30, 150, 220, 60), FromColorArray: colorArray2, ByGradientType:GradientType.upleftTolowRight)
        button2.setTitle("保存", forState: .Normal)
        self.view.addSubview(button2)
        
        let colorArray3 = [UIColor(red: 0.5, green: 0.5, blue: 1, alpha: 1),UIColor(red: 0.1, green: 0.1, blue: 1, alpha: 1),UIColor(red: 0.5, green: 0.5, blue: 1, alpha: 1)];
        let button3 = ColorButton(frame: CGRectMake(30, 250, 220, 60), FromColorArray: colorArray3, ByGradientType:GradientType.topToBottom)
        button3.setTitle("Cancel", forState: .Normal)
        self.view.addSubview(button3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

