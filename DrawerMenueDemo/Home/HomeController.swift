//
//  HomeController.swift
//  DrawerMenueDemo
//
//  Created by Tony on 2017/6/16.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.yellow
        
        let menueBtn = UIButton(frame: CGRect(x: 0, y: 0, width: 21, height: 21))
        menueBtn.setImage(UIImage(named: "nav_leftsidebar_nor"), for: UIControlState.normal)
        menueBtn.setImage(UIImage(named: "nav_leftsidebar_sel"), for: UIControlState.highlighted)
        menueBtn.addTarget(self, action: #selector(showMenue), for: UIControlEvents.touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: menueBtn)
    }
    
    func showMenue() {
        rootViewController().showLeftViewController(true)
        rootViewController().showShadow(true)
    }
}
