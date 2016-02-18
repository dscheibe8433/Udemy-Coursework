//
//  ViewController.swift
//  Tapper
//
//  Created by David Scheibe on 2/18/16.
//  Copyright © 2016 David Scheibe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Howmany: UITextField!
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var Playbtn: UIButton!
    @IBOutlet weak var Tapbtn: UIButton!
    @IBOutlet weak var TapL: UILabel!
    @IBOutlet weak var MeL: UILabel!
    @IBOutlet weak var CoinL: UILabel!
    
    var maxTaps = 0;
    var curTaps = 0;
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        if Howmany.text != nil && Howmany.text != ""  && Howmany.text != "How many taps to win?" && Howmany.text != "Please enter how many taps"{
            Logo.hidden = true;
            Playbtn.hidden = true;
            Howmany.hidden = true;
            Tapbtn.hidden = false;
            TapL.hidden = false;
            MeL.hidden = false;
            CoinL.hidden = false;
            
            maxTaps = Int(Howmany.text!)!
            curTaps = 0;
            
            updateTaps();
            
        }
        else
        {
            Howmany.text = "Please enter how many taps";
        }
    }
    
    @IBAction func onTapbtn(sender: UIButton!){
        curTaps++;
        updateTaps();
        
        if maxTaps == curTaps {
            restart();
        }
    }
    
    func updateTaps(){
        CoinL.text = "\(curTaps) Taps";
    }
    func restart(){
        Howmany.text = "";
        maxTaps = 0;
        Howmany.placeholder = "How many taps to win this time?";
        
        Logo.hidden = false;
        Playbtn.hidden = false;
        Howmany.hidden = false;
        Tapbtn.hidden = true;
        TapL.hidden = true;
        MeL.hidden = true;
        CoinL.hidden = true;
    }
    func gameOver() -> Bool {
        if curTaps >= maxTaps {
            return true; }
        else {
            return false; }
    }
}

