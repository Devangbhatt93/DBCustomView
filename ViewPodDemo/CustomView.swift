//
//  CustomView.swift
//  ViewPodDemo
//
//  Created by devang.bhatt on 27/06/17.
//  Copyright © 2017 devang.bhatt. All rights reserved.
//

import Foundation
import UIKit

class CustomView : UIView {
    
    let colors : [UIColor]  = [.red , .blue ,.black , .yellow , .brown]
    
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let scheduleColorChange = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: 2.0, animations: {
                self.layer.backgroundColor = self.colors[self.colorCounter % 5].cgColor
                self.colorCounter += 1
            })
        }
        
        scheduleColorChange.fire()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
