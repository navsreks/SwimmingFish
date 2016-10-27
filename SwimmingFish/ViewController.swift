//
//  ViewController.swift
//  SwimmingFish
//
//  Created by Navya Rekapally on 10/26/16.
//  Copyright © 2016 DeAnza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fishImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIView.animateWithDuration(10, animations: {self.fishImage.frame = CGRectMake(-800, 280, 320, 240)})
    }
    override func viewWillAppear(animated: Bool) {
        self.fishImage.frame = CGRectMake(400, 280, 0, 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

