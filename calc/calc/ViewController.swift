//
//  ViewController.swift
//  calc
//
//  Created by user_dehnethmny on 1/12/23.
//  Copyright © 2023 user_dehnethmny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var namberFromScreen : Double = 0
    var firstnamberFromScreen : Double = 0
    var operation : Int = 0
    var mathSign : Bool = false
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digit(_ sender: UIButton) {
        if mathSign == true
        {
            result.text = String(sender.tag)
            mathSign = false
        }
        else
        {
        result.text = result.text! + String(sender.tag)
        }
        namberFromScreen = Double(result.text!)!
    }
    
    @IBAction func button(_ sender: UIButton) {
        if result.text != ""
            && sender.tag != 11
            && sender.tag != 12
            && sender.tag != 13
            && sender.tag != 25
        {
            firstnamberFromScreen = Double(result.text!)!
            if sender.tag == 21         // +
            {
                result.text = "+"
            }
            else if sender.tag == 22    // -
            {
                result.text = "-"
            }
            else if sender.tag == 23    // *
            {
                result.text = "*"
            }
            else if sender.tag == 24    // /
            {
                result.text = "/"
            }
            operation = sender.tag
            mathSign = true
        }
        else if sender.tag == 13
        {
            if operation == 21
            {
                result.text = String(firstnamberFromScreen + namberFromScreen)
            }
            if operation == 22
            {
                result.text = String(firstnamberFromScreen - namberFromScreen)
            }
            if operation == 23
            {
                result.text = String(firstnamberFromScreen * namberFromScreen)
            }
            if operation == 24
            {
                result.text = String(firstnamberFromScreen /  namberFromScreen)
            }
            //sender.tag == 11    // M-
            //sender.tag == 12    // M-
            //sender.tag == 13    // =
            //sender.tag == 25    // Clear
        }
        else if sender.tag == 25
        {
            result.text = ""
            firstnamberFromScreen = 0
            namberFromScreen = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

