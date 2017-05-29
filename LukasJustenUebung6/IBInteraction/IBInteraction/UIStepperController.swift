//
//  UIStepperController.swift
//  IBInteraction
//
//  Created by Student on 26.05.17.
//  Copyright © 2017 TH Bingen. All rights reserved.
//

import UIKit

class UIStepperController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        infoLabel.text="50"
    }
    
    @IBAction func stepChanged(_ sender: UIStepper) {
        infoLabel.text = String(sender.value)
    }
    
}
