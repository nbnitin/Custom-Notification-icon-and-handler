//
//  ViewController1.swift
//  Custom Notification Badge Universal Handling
//
//  Created by Nitin Bhatia on 31/08/18.
//  Copyright © 2018 Nitin Bhatia. All rights reserved.
//

import UIKit

class ViewController1: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tbl: UITableView!
    var data : NotificationData!
    var unreadIds : Set<Int> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = AddNotifcation.shared.getNotification()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data.data[indexPath.row].title
        
        if(!data.data[indexPath.row].isRead){
            cell.contentView.backgroundColor = UIColor.gray
        } else {
           cell.contentView.backgroundColor = UIColor.white
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if(!data.data[indexPath.row].isRead){
            data.data[indexPath.row].isRead = true
            unreadIds.insert(indexPath.row)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AddNotifcation.shared.makeNotificationRead(index: unreadIds)
    }
 

}
