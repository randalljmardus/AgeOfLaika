//
//  ViewController.swift
//  ageOfLaika
//
//  Created by Randall Mardus on 1/10/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text!
        let convertedAge = Int(stringFromTextField)! * 7
        
        dogYearsLabel.text = "\(convertedAge) Dog Years"
        
        dogYearsLabel.hidden = false
        
        enterHumanYearsTextField.resignFirstResponder()
    }
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterHumanYearsTextField.text!
        let doubleFromTextField = Double(stringFromTextField)!
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
    
        dogYearsLabel.hidden = false
        
        dogYearsLabel.text = "\(realDogYears) Real Dog Years"
        
        enterHumanYearsTextField.resignFirstResponder()
    }
}