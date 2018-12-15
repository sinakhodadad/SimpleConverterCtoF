//
//  ViewController.swift
//  converterCToF
//
//  Created by sinahk on 12/9/18.
//  Copyright © 2018 sinahk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTextfield: UITextField!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func myButtonAction(_ sender: Any) {
        let cls: Double = NSString(string: myTextfield.text!).doubleValue
        let frn: Double = (1.8 * cls) + 32
        myLabel.text = "\(cls) C is \(frn) F"
        textFieldShouldReturn(myTextfield)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTextfield.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn (_ textField: UITextField) -> Bool  {
        textField.resignFirstResponder()
        return true
    }


}

