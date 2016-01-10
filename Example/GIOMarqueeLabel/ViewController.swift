//
//  ViewController.swift
//  GIOMarqueeLabel
//
//  Created by Gigih Iski Prasetyawan on 01/10/2016.
//  Copyright (c) 2016 Gigih Iski Prasetyawan. All rights reserved.
//

import UIKit
import GIOMarqueeLabel

class ViewController: UIViewController {
    @IBOutlet var marqueeLabel: GIOMarqueeLabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        marqueeLabel?.message = "Testing"
        marqueeLabel?.startAnimation(time: 5.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

