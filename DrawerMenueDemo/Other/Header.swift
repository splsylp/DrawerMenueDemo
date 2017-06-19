//
//  Header.swift
//  DrawerMenueDemo
//
//  Created by Tony on 2017/6/16.
//  Copyright © 2016年 Tony. All rights reserved.
//

import UIKit

// 项目主颜色
func MAIN_COLOR() -> UIColor {
    return UIColor(red: 74/255.0, green: 163/255.0, blue: 243/255.0, alpha: 1.0)
}

// 红色
func RED_COLOR() -> UIColor {
    return UIColor(red: 252/255.0, green: 106/255.0, blue: 125/255.0, alpha: 1.0)
}

// 跟控制器
func rootViewController() -> DrawerMenuController {
    let drawerVC = UIApplication.shared.keyWindow?.rootViewController as! DrawerMenuController
    return drawerVC
}





