//
//  FirstViewController.swift
//  LukasJustenHelloWorld
//
//  Created by Student on 07.04.17.
//  Copyright © 2017 TH Bingen. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Reihenfolge der Aufrufe
    
    // Beim Wechsel vom ersten ViewController in den zweiten und wieder zurück
    
    // 1. View did load             1
    // 1. View will appear          2
    // 1. View appeared             3
    // 2. View did load             4
    // 2. View will appear          5
    // 1. View will disappear       6
    // 1. View will disappeared     7
    // 2. View appeared             8
    // 1. View did load             9
    // 1. View will appear          10
    // 2. View will disappear       11
    // 2. View will disappeared     12
    // 1. View appeared             13
    
    
    // 1. Aufruf + 9.Aufruf
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1. View did load")
    }
    
    // 2. Aufruf + 10.Aufruf
    override func viewWillAppear(_ animated: Bool) {
        print("1. View will appear")
    }
    
    // 3. Aufruf + 13. Aufruf
    override func viewDidAppear(_ animated: Bool) {
        print("1. View appeared")
    }
    
    // 6. Aufruf
    override func viewWillDisappear(_ animated: Bool) {
        print("1. View will disappear")
    }
    
    // 7. Aufruf
    override func viewDidDisappear(_ animated: Bool) {
        print("1. View will disappeared")
    }


}

