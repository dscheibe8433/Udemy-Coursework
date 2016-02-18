//
//  ViewController.swift
//  Udemy_Project1
//
//  Created by David Scheibe on 2/17/16.
//  Copyright © 2016 David Scheibe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Crazylogo: UIImageView!
    @IBOutlet weak var crazybg: UIImageView!
    @IBOutlet weak var GoCrazy: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Disappear(sender: AnyObject) {
        Crazylogo.hidden = false;
        crazybg.hidden = false;
        GoCrazy.hidden = true;
    }


}

