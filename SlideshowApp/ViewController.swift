//
//  ViewController.swift
//  SlideshowApp
//
//  Created by まく on 2018/07/15.
//  Copyright © 2018年 sshiono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer!
    var firstValue:Int = 0
    let imageList = ["cat.jpg", "dog.jpg", "fox.jpg"]
    
    @IBOutlet weak var startPauseButton2: UIButton!
    @IBOutlet weak var slideShow: UIImageView!
    @IBOutlet weak var backButton2: UIButton!
    @IBOutlet weak var beforeButton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    @objc func updateTimer(_ timer: Timer) {
      // 2秒毎の動き
        
        firstValue += 1
        
        if firstValue == 3{
            firstValue = 0
        }
        
        slideShow.image = UIImage(named:imageList[firstValue])
        
        
        
    }
    

    @IBAction func backButton(_ sender: Any) {
        
        firstValue -= 1
        
        if firstValue == -1{
            firstValue = 2
        }
        
        slideShow.image = UIImage(named:imageList[firstValue])
        
        
        
        
    }
    
    
    
    @IBAction func startPauseButton(_ sender: Any) {
        // 再生時の動き
        
        if self.timer == nil {
        self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        
            startPauseButton2.setTitle("停止", for: .normal)
            
             backButton2.isEnabled = false
             beforeButton2.isEnabled = false
            
        }else{
            // 停止時の動き
            
            startPauseButton2.setTitle("再生", for: .normal)
            self.timer.invalidate()
            self.timer = nil
            backButton2.isEnabled = true
            beforeButton2.isEnabled = true
            
        }
        
    }
    
    @IBAction func beforeButton(_ sender: Any) {
        
        firstValue += 1
        
        if firstValue == 3{
            firstValue = 0
        }
        
        slideShow.image = UIImage(named:imageList[firstValue])
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
if self.timer != nil {
        startPauseButton2.setTitle("再生", for: .normal)
        self.timer.invalidate()
        self.timer = nil
        }
        backButton2.isEnabled = true
        beforeButton2.isEnabled = true
        
        let bigImageViewController:bigImageViewController = segue.destination as! bigImageViewController
bigImageViewController.firstValue = firstValue
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
        
    }
    
    
    
}

