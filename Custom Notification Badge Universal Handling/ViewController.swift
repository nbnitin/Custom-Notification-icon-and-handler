//
//  ViewController.swift
//  Custom Notification Badge Universal Handling
//
//  Created by Nitin Bhatia on 31/08/18.
//  Copyright © 2018 Nitin Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        AddNotifcation.shared.addNotificationData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressAddNotifcation(_ sender: Any) {
        AddNotifcation.shared.addNotificationData()
    }
    
}

