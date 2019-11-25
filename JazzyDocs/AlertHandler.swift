//
//  AlertHandler.swift
//  JazzyDocs
//
//  Created by Leonardo Ferreira Bilia on 23/11/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import UIKit

/// This is a class for handling Alerts
class AlertHandler: NSObject {

    /**
     Call this function for showing alert with a single OK button in your View Controller.
     - Parameters:
        - viewController : View Controller over which the function is called. You can use self, or provide view controller name.
        - title: This will display a title String.
        - message: This will display a message String.
        - actionHandler: This will give you call back inside block when OK button is tapped
     
     Usage:
     ````
     AlertHandler.present(self, title: "Hello Jazzy", message: "This is just a custom alert to tell you how much Jazzy makes our lives easier") { (buttonTapped) in
         print("The ok button was tapped")
     }
     ````
     */
    
    static func present(_ viewController: UIViewController, title: String, message: String , actionHandler :@escaping(UIAlertAction) -> Void){
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message , preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: actionHandler))
            viewController.present(alert, animated: true, completion: nil)
        }
    }
}
