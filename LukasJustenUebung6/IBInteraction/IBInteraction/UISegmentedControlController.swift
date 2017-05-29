//
//  UISegmentedControlController.swift
//  IBInteraction
//
//  Created by Student on 26.05.17.
//  Copyright © 2017 TH Bingen. All rights reserved.
//

import UIKit

class UISegmentedControlController: UIViewController {

    @IBAction func selectionChanged(_ sender: UISegmentedControl) {
        let title : String = sender.titleForSegment(at: sender.selectedSegmentIndex)!
        print(title)
    }
    
}
