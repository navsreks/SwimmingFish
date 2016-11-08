//
//  ViewController.swift
//  SwimmingFish
//
//  Created by Navya Rekapally on 10/26/16.
//  Copyright © 2016 DeAnza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var xStart = 0
    var yStart = 100
    var wStart = 50
    var hStart = 50
    var xEnd = 320
    var yEnd = 568
    var durSec = 5.0
    var durDly = 0.0
    var options = UIViewAnimationOptions.Autoreverse
    
    @IBOutlet var numFish: UISlider!
    @IBOutlet var fishImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "reef.jpg")!)
        //Madhura Test

        var totalFish = Int(self.numFish.value)
        
        for loopNum in 1...totalFish
        {
            var wFish = (random() % 10) * 20
            var hFish = wFish * 3/4
            var xStart = 0 - wFish
            var xEnd = 320 + wFish
            var yPos = (random() % 200) + wFish
        
            var fDuration = NSTimeInterval(Float((random() % 5) + 1))
            var fDelay = NSTimeInterval(Float((random() % 3) + 8)) / 10.0
            
            var fOptions = UIViewAnimationOptions.CurveLinear
            
            let fish = UIImageView()
                fish.image = UIImage(named: "fish7" )
                fish.frame  = CGRect(x: xStart, y: yPos, width: wFish, height: hFish)
                self.view.addSubview(fish)
            
            UIView.animateWithDuration(fDuration, delay: fDelay, options: fOptions, animations: {
                fish.frame = CGRect (x: xStart, y: yPos, width: wFish, height: hFish)}, completion:{animationFinished in fish.removeFromSuperview();
            })
            

        }

        
        let clrSq = UIView ()
        
        clrSq.backgroundColor = UIColor(patternImage: UIImage(named: "fish7.jpg")!)//UIColor.greenColor()
        clrSq.frame = CGRect (x: xStart, y: yStart, width: wStart, height: hStart)
        
        self.view.addSubview(clrSq)
        UIView.animateWithDuration(10, animations: {self.fishImage.frame = CGRectMake(-800, 280, 320, 240)})
        
        UIView.animateWithDuration(durSec, animations: {
            //clrSq.backgroundColor = UIColor.yellowColor()
            clrSq.frame = CGRect (x: self.xStart, y: self.yStart, width: self.wStart, height: self.hStart)})
        
        UIView.animateWithDuration(durSec, delay: self.durDly, options: self.options, animations: {
            //clrSq.backgroundColor = UIColor.blueColor()
            clrSq.frame = CGRect (x: self.xEnd-self.xStart, y: self.yStart, width: self.wStart, height: self.hStart)}, completion:nil)

    }
    override func viewWillAppear(animated: Bool) {
        self.fishImage.frame = CGRectMake(400, 280, 0, 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animate(sender: AnyObject) {
    }

}

