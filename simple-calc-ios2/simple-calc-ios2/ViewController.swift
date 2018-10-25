//
//  ViewController.swift
//  simple-calc-ios2
//
//  Created by Raymond Lee on 10/19/18.
//  Copyright © 2018 rayjaelee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayText = ""
    
    @IBOutlet weak var lblAnswer: UILabel!
    
    @IBAction func btnNonEqual(_ sender: UIButton) {
        if sender.tag < 0 {
            switch sender.tag {
            case -1:
                displayText += " + "
            case -2:
                displayText += " - "
            case -3:
                displayText += " * "
            case -4:
                displayText += " / "
            case -5:
                displayText += " % "
            case -6:
                displayText += " FACT "
            case -7:
                displayText += " AVG "
            case -8:
                displayText += " COUNT "
            default:
                displayText += " "
            }
        } else {
            if sender.tag >= 10 {
                displayText = " "
            } else {
                displayText += String(sender.tag)
            }
        }
        lblAnswer.text = displayText
    }
    
    @IBAction func btnEqual(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

