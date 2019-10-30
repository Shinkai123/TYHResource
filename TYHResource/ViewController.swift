//
//  ViewController.swift
//  TYHResource
//
//  Created by YaoHua Tan on 2019/10/24.
//  Copyright © 2019 YaoHua Tan. All rights reserved.
//

import UIKit
import CTMediator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(testBtn)
        self.view.addSubview(showImg)
    }

    lazy var testBtn: UIButton = {
       let testBtn = UIButton()
       testBtn.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
       testBtn.setTitle("test", for: UIControl.State.normal)
       testBtn.setTitleColor(UIColor.white, for: UIControl.State.normal)
       testBtn.backgroundColor = UIColor.blue
       testBtn.layer.cornerRadius = 5.0
       testBtn.layer.masksToBounds = true
        testBtn.addTarget(self, action: #selector(ViewController.testAction), for: UIControl.Event.touchUpInside)
       return testBtn
    }()
    
    @objc func testAction(sender: UIButton) {
        let sildBarImg = CTMediator.sharedInstance()?.tyh_resourceGetImage(imageName: TYHResourceAssetsName.icon_preview_add_no.rawValue, modular: TYHResourceAssetsName_Home)
        showImg.image = sildBarImg
    }
    
    lazy var showImg: UIImageView = {
        let showImg = UIImageView()
        showImg.frame = CGRect(x: 100, y: 200, width: 50, height: 50)
        showImg.contentMode = .scaleAspectFit
        
        return showImg
    }()
}

