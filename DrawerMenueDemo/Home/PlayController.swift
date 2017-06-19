//
//  PlayController.swift
//  DrawerMenueDemo
//
//  Created by Tony on 2017/6/16.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class PlayController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.green
        
        let btn = UIButton(frame: CGRect(x: 100, y: 150, width: 100, height: 50))
        btn.setTitle("点我啊！", for: UIControlState.normal)
        btn.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn.backgroundColor = RED_COLOR()
        btn.addTarget(self, action: #selector(btnClicked), for: UIControlEvents.touchUpInside)
        view.addSubview(btn)
    }
    
    func btnClicked() {
        navigationController?.pushViewController(TestController(), animated: true)
    }
    
}
