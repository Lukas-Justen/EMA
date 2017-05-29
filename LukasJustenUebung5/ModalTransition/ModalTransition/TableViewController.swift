//
//  ViewController.swift
//  ModalTransition
//
//  Created by Student on 19.05.17.
//  Copyright © 2017 TH Bingen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let page = UIViewController()
        print(indexPath.row)
        switch indexPath.row {
        case 0:
            page.modalPresentationStyle = .fullScreen
            page.modalTransitionStyle = .coverVertical
            let navController = UINavigationController(rootViewController: page)
            self.present(navController, animated:true, completion: nil)
            break
        case 1:
            page.modalPresentationStyle = .fullScreen
            page.modalTransitionStyle = .crossDissolve
            let navController = UINavigationController(rootViewController: page)
            self.present(navController, animated:true, completion: nil)
            break
        case 2:
            page.modalPresentationStyle = .fullScreen
            page.modalTransitionStyle = .flipHorizontal
            let navController = UINavigationController(rootViewController: page)
            self.present(navController, animated:true, completion: nil)
            break
        case 3:
            page.modalPresentationStyle = .fullScreen
            page.modalTransitionStyle = .partialCurl
            let navController = UINavigationController(rootViewController: page)
            self.present(navController, animated:true, completion: nil)
            break
        default:
            break
        }
        
    }
    
}
