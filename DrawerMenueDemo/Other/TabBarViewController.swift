//
//  TabBarViewController.swift
//  DrawerMenueDemo
//
//  Created by Tony on 2017/6/16.
//  Copyright © 2016年 Tony. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addAllChildVcs()
        self.tabBar.tintColor = MAIN_COLOR()
        UITabBar.appearance().backgroundColor = UIColor.gray
        self.selectedIndex = 1
    }
    
    // 添加所有的子控制器
    func addAllChildVcs() {
        
        self.addOneChildViewController(PlayController(), title: "学习", imageName: "btn_study_gray", selectedImageName: "btn_study_blue")
        
        self.addOneChildViewController(HomeController(), title: "首页", imageName: "footer_home_hui", selectedImageName: "footer_home")
        
        self.addOneChildViewController(GameController(), title: "游戏", imageName: "footer_live_hui", selectedImageName: "footer_live")
    }
    
    // 创建子控制器
    func addOneChildViewController(_ childVC:UIViewController, title:String, imageName:String, selectedImageName:String) {
        
        childVC.title = title;
        childVC.tabBarItem.image = UIImage(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: selectedImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let nav = NavigationController(rootViewController:childVC)
        self.addChildViewController(nav)
    }

}
