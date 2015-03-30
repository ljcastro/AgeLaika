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

        var humanYears = (humanYearsTextField.text as NSString).doubleValue
        var convertToDogYears:Double
        
        if (humanYears > 2) {
            convertToDogYears = ((humanYears - 2) * 4) + (2 * 10.5)
        }
        else {
            convertToDogYears = humanYears * 10.5
        }
        
        convertedDogYearsLabel.hidden = false
        convertedDogYearsLabel.text = "\(convertToDogYears)" + " Dog Years!"

        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }
}

