//
//  NotificationController.swift
//  Polumenta2K15 WatchKit Extension
//
//  Created by Maksa on 8/17/15.
//  Copyright (c) 2015 MM. All rights reserved.
//

import WatchKit
import Foundation


class NotificationController: WKUserNotificationInterfaceController {

    @IBOutlet weak var nameLabel: WKInterfaceLabel!
    @IBOutlet weak var polumentaLabel: WKInterfaceLabel!
    override init() {
        // Initialize variables here.
        super.init()
        let p = Polumentizator()
        let s = p.polumentizuj()
        var parts = s.characters.split { $0 == " " }.map { String($0) }
        nameLabel.setText( parts[0] )
        polumentaLabel.setText( parts[1] )
        // Configure interface objects here.
    }

    override func willActivate() {
        let p = Polumentizator()
        let s = p.polumentizuj()
        var parts = s.characters.split { $0 == " " }.map { String($0) }
        nameLabel.setText( parts[0] )
        polumentaLabel.setText( parts[1] )
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    /*
    override func didReceiveLocalNotification(localNotification: UILocalNotification, withCompletion completionHandler: ((WKUserNotificationInterfaceType) -> Void)) {
        // This method is called when a local notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        //
        // After populating your dynamic notification interface call the completion block.
        completionHandler(.Custom)
    }
    */
    
    /*
    override func didReceiveRemoteNotification(remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: ((WKUserNotificationInterfaceType) -> Void)) {
        // This method is called when a remote notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        //
        // After populating your dynamic notification interface call the completion block.
        completionHandler(.Custom)
    }
    */
}
