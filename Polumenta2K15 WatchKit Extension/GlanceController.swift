//
//  GlanceController.swift
//  Polumenta2K15 WatchKit Extension
//
//  Created by Maksa on 8/17/15.
//  Copyright (c) 2015 MM. All rights reserved.
//

import WatchKit
import Foundation

class GlanceController: WKInterfaceController {

    @IBOutlet weak var nameLabel: WKInterfaceLabel!
    @IBOutlet weak var polumentaLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext( context )
        var p = Polumentizator()
        var s = p.polumentizuj()
        var parts = split( s ) { $0 == " " }
        nameLabel.setText( parts[0] )
        polumentaLabel.setText( parts[1] )
    }

    override func willActivate() {
        var p = Polumentizator()
        var s = p.polumentizuj()
        var parts = split( s ) { $0 == " " }
        nameLabel.setText( parts[0] )
        polumentaLabel.setText( parts[1] )
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}