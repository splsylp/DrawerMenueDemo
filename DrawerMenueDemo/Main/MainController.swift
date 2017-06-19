//
//  MainController.swift
//  DrawerMenueDemo
//
//  Created by Tony on 2017/6/16.
//  Copyright © 2016年 Tony. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rootController = TabBarViewController()
        let leftViewController = LeftController()
//        let rightViewController = RightController()
        
        let drawerMenuController:DrawerMenuController = DrawerMenuController()
        drawerMenuController.rootViewController = rootController
        drawerMenuController.leftViewController = leftViewController
//        drawerMenuController.rightViewController = rightViewController
        drawerMenuController.needSwipeShowMenu = true
        (UIApplication.shared.delegate as! AppDelegate).menuController = drawerMenuController
        
        UIApplication.shared.delegate?.window!?.rootViewController = drawerMenuController
    }
}
