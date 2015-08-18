//
//  ViewController.swift
//  Polumenta2K15
//
//  Created by Maksa on 8/15/15.
//  Copyright (c) 2015 MM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var polumentaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var p = Polumentizator()
        self.polumentaLabel.text = p.polumentizuj()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func swiped(sender: UISwipeGestureRecognizer) {
        
        UIView.animateWithDuration(0.2,
            animations: {
                self.polumentaLabel.alpha = 0
            },
            completion: {
                (value:Bool) in
                var p = Polumentizator()
                self.polumentaLabel.text = p.polumentizuj()

                UIView.animateWithDuration(0.2,
                    animations: {
                        self.polumentaLabel.alpha = 1
                    })
        })
    }
}

