//
//  BMBadgeButton.swift
//  BleepMedDoctor
//
//  Created by Writayan Das on 19/09/17.
//  Copyright © 2017 innofied. All rights reserved.
//

import Foundation
import Material

class BMBadgeButton: MIBadgeButton {
    
    override open var badgeString: String? {
        didSet {
            if let newValue = self.badgeString, newValue == "0" {
                badgeTextColor = .clear
                badgeBackgroundColor = .clear
            } else {
                badgeBackgroundColor = .red
                badgeTextColor = .white
            }
            super.badgeString = self.badgeString
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    
    func setup() {
        badgeBackgroundColor = .clear
        badgeTextColor = .clear
        badgeEdgeInsets = UIEdgeInsetsMake(10, 0, 0, 10)
        badgeString = "\(AddNotifcation.shared.unreadCount)"
        NotificationCenter.default.addObserver(self, selector: #selector(BMBadgeButton.updateBadgeCount), name: Notification.Name("UpdateBadgeNotification"), object: nil)
    }
    
    @objc func updateBadgeCount() {
        badgeString = "\(AddNotifcation.shared.unreadCount)"
    }
}

