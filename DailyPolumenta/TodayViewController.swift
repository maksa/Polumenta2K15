//
//  TodayViewController.swift
//  DailyPolumenta
//
//  Created by Maksa on 8/18/15.
//  Copyright (c) 2015 MM. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var polumentaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        preferredContentSize = CGSizeMake(view.frame.size.width, 50 )
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        // Perform any setup necessary in order to update the view.

        var p = Polumentizator()
        var s = p.polumentizuj()
        polumentaLabel.text = s;
        
        completionHandler(NCUpdateResult.NewData)
    }

    func widgetMarginInsetsForProposedMarginInsets(defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0, 0, 0);
    }

}
