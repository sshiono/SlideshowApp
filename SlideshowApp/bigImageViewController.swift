//
//  bigImageViewController.swift
//  SlideshowApp
//
//  Created by まく on 2018/07/15.
//  Copyright © 2018年 sshiono. All rights reserved.
//

import UIKit

class bigImageViewController: UIViewController {

    @IBOutlet weak var bigImageParts: UIImageView!
    var firstValue:Int = 0
    let imageList = ["cat.jpg", "dog.jpg", "fox.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
bigImageParts.image = UIImage(named:imageList[firstValue])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
