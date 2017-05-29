//
//  UISliderController.swift
//  IBInteraction
//
//  Created by Student on 26.05.17.
//  Copyright © 2017 TH Bingen. All rights reserved.
//

import UIKit

class UISliderController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.red.withAlphaComponent(CGFloat(0.5))
    }
    
    @IBAction func opacityChanged(_ sender: UISlider){
        view.backgroundColor = UIColor.red.withAlphaComponent(CGFloat(sender.value))
    }
    
}
