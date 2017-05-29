//
//  UISwitchController.swift
//  IBInteraction
//
//  Created by Student on 26.05.17.
//  Copyright © 2017 TH Bingen. All rights reserved.
//

import UIKit

class UISwitchController: UIViewController {

    @IBAction func changeBackground(_ sender: UISwitch) {
        if (sender.isOn) {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .red
        }
    }
    
}
