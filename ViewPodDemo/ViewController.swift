//
//  ViewController.swift
//  ViewPodDemo
//
//  Created by devang.bhatt on 27/06/17.
//  Copyright © 2017 devang.bhatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var customView : CustomView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView = CustomView.init(frame: self.view.bounds)
        self.view.addSubview(customView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
