//
//  NotificationManager.swift
//  BleepMedUser
//
//  Created by Soham Ray on 18/09/17.
//  Copyright © 2017 innofied. All rights reserved.
//

import Foundation


class NotificationManager {
    static let shared = NotificationManager()
    var unreadCount = 0
    init() {
      //  MQTTManager.shared.serviceDelegate = self
    }
    
   // var notificationData: NotificationResponseModel?
    
    func updateNotification() {
      
//        ContentAPIServices.shared.getNotification() { (response, error) in
//            if error == nil && (response?.success)! {
//                if let resp = response {
//                    if let data = resp.data {
//                        self.notificationData = data
//                        self.unreadCount = data.unreadCount
//                        NotificationCenter.default.post(Notification(name: Notification.Name("UpdateBadgeNotification")))
//                    } else {
//                        // no data
//                    }
//                } else {
//                    // no reponse
//                }
//            } else {
//                // error occurred
//            }
//        }
    }
    
    func markNotificationAsRead(ids : [String]) {
//        ContentAPIServices.shared.markNotificationsAsRead(notificationIDs: ids) { (response, error) in
//            if error == nil && (response?.success)! {
//                NotificationManager.shared.updateNotification()
//            } else {
//                // error occurred
//            }
//        }
//    }
    
}

}

