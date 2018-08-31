//
//  NotificationData.swift
//  Custom Notification Badge Universal Handling
//
//  Created by Nitin Bhatia on 31/08/18.
//  Copyright © 2018 Nitin Bhatia. All rights reserved.
//

import Foundation

struct NotificationData{
    var unreadCount : Int
    var data : [NotificationSubData]
    
}

struct NotificationSubData{
    var title : String
    var isRead : Bool
}


class AddNotifcation{
    static let shared = AddNotifcation()
    var count = 1
    var x = NotificationData(unreadCount: 0, data: [])
    var unreadCount = 0
    

    func addNotificationData(){
        let temp = NotificationSubData(title: "hello \(count)", isRead: false)
        self.x.unreadCount = x.unreadCount + 1
        self.unreadCount = x.unreadCount
        self.count = self.count + 1
        x.data.append(temp)
        
        NotificationCenter.default.post(Notification(name: Notification.Name("UpdateBadgeNotification")))
    }
    
   func getNotification()->NotificationData{
        return x
    }
    
    func makeNotificationRead(index:Set<Int>){
        for i in index{
            x.data[i].isRead = true
            x.unreadCount = x.unreadCount - 1
        }
        self.unreadCount = x.unreadCount
        NotificationCenter.default.post(Notification(name: Notification.Name("UpdateBadgeNotification")))
    }
    
    func clearAll(){
        x.data.removeAll()
        unreadCount = 0
        count = 1
//        x = NotificationData(unreadCount: 0, data: [NotificationSubData(title: "hello 0", isRead: false)])
    }
}
