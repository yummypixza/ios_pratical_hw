//
//  ViewController.swift
//  FinalProject
//
//  Created by pixza Yaoita on 2018/6/16.
//  Copyright © 2018年 pixza Yaoita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var answer = GetTheAnswer()
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func submit(_ sender: UIButton) {
        numberLabel.text = answer.compareNumber(inputText: inputField.text!)
        inputField.text = ""
    }
}
