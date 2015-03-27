//
//  ViewController.swift
//  AgeLaika
//
//  Created by Lucas J. Castro on 26/3/15.
//  Copyright (c) 2015 Lucas J. Castro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var convertedDogYearsLabel: UILabel!
    
    @IBOutlet weak var humanYearsTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func convertToDogYearsButton(sender: UIButton) {

        var humanYears = humanYearsTextField.text.toInt()!
        var convertToDogYears = humanYears * 7
        
        convertedDogYearsLabel.hidden = false
        convertedDogYearsLabel.text = "\(convertToDogYears)" + " Dog Years!"

        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }
}

