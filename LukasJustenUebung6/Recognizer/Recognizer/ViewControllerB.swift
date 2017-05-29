//
//  ViewControllerB.swift
//  Recognizer
//
//  Created by Student on 29.05.17.
//  Copyright © 2017 TH Bingen. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let recognizer : UIGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress))
        view.addGestureRecognizer(recognizer)
    }

    func handleLongPress() {
        dismiss(animated: true, completion: nil)
    }
    
}
