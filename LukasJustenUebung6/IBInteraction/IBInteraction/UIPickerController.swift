//
//  UIPickerController.swift
//  IBInteraction
//
//  Created by Student on 26.05.17.
//  Copyright © 2017 TH Bingen. All rights reserved.
//

import UIKit

class UIPickerController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var picker: UIPickerView!

    let months = ["Januar", "Februar", "März", "April", "Mai", "Juni", "Juli", "August", "September", "November", "Dezember"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return months[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return months.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = months[row]
    }
    
    override func viewDidLoad() {
        label.text = "Januar"
    }
    
}
