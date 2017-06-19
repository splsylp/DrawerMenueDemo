//
//  NavigationController.swift
//  DrawerMenueDemo
//
//  Created by Tony on 2017/6/16.
//  Copyright © 2016年 Tony. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.isTranslucent = false
        navigationBar.barTintColor = MAIN_COLOR()
//        navigationBar.setBackgroundImage(UIImage(named: "navbg"), forBarMetrics: UIBarMetrics.Default)
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont.systemFont(ofSize: 18)]
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            
            let rootVC = UIApplication.shared.keyWindow?.rootViewController
            if (rootVC? .isKind(of: DrawerMenuController.classForCoder()))! {
                // 从首页push到其他页面后关闭滑动手势
                rootViewController().needSwipeShowMenu = false
            }
            
            //设置统一的返回按钮
            let button = UIButton()
            button.adjustsImageWhenHighlighted = false
            button.setBackgroundImage(UIImage(named: "fanhui_new"), for: UIControlState.normal)
            button.setBackgroundImage(UIImage(named: "fanhui_yin_new"), for: UIControlState.highlighted)
            button.imageView?.contentMode = UIViewContentMode.scaleAspectFit
            button.frame = CGRect(x: 0, y: 0, width: 21, height: 21)
            button.addTarget(self, action: #selector(self.back), for: UIControlEvents.touchUpInside)
            let backBtnItem = UIBarButtonItem.init(customView: button)
            viewController.navigationItem.leftBarButtonItem = backBtnItem
        }
        
        super.pushViewController(viewController, animated: animated)
    }
    
    func back() {
        if viewControllers.count == 2 {
            let rootVC = UIApplication.shared.keyWindow?.rootViewController
            if (rootVC?.isKind(of: DrawerMenuController.classForCoder()))! {
                // 从其他页面pop到首页后打开滑动手势
                rootViewController().needSwipeShowMenu = true
            }
        }
        popViewController(animated: true)
    }
}
