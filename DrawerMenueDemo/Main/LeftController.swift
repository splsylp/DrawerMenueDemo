//
//  LeftController.swift
//  DrawerMenueDemo
//
//  Created by Tony on 2017/6/16.
//  Copyright © 2016年 Tony. All rights reserved.
//

import UIKit

class LeftController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        let btn = UIButton(frame: CGRect(x: 20, y: 100, width: 100, height: 50))
        btn.setTitle("点我啊！", for: UIControlState.normal)
        btn.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn.backgroundColor = RED_COLOR()
        btn.addTarget(self, action: #selector(btnClicked), for: UIControlEvents.touchUpInside)
        view.addSubview(btn)
    }
    
    func btnClicked() {
        
        let drawer = rootViewController()
        drawer.hideSideViewController(false)
        
        let tab = drawer.rootViewController
        let navController = tab?.viewControllers?[(tab?.selectedIndex)!] as! NavigationController
        navController.pushViewController(TestController(), animated: true)
    }
}
