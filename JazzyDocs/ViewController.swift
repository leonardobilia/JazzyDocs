//
//  ViewController.swift
//  JazzyDocs
//
//  Created by Leonardo Ferreira Bilia on 23/11/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        AlertHandler().showAlert(self, title: "Hello Alert", message: "This is a custom alert") { (buttonTapped) in
            print("The ok button was tapped")
        }
    }


}

