//
//  ViewController.swift
//  swiftfirstclass
//
//  Created by user240701 on 1/22/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtMsg: UILabel!
    @IBOutlet weak var txtView: UITextView!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtCountry: UITextField!
    @IBOutlet weak var txtLast: UITextField!
    @IBOutlet weak var txtFirst: UITextField!
    var x = 0;
    
    @IBAction func txtClear(_ sender: Any) {
        txtFirst.text = ""
        txtLast.text = ""
        txtCountry.text = ""
        txtAge.text = ""
        txtView.text = ""
        txtMsg.text = ""
    }
    @IBAction func txtSubmit(_ sender: Any) {
        
        if Validation_Check() == 1
        {
            txtMsg.text = "Complete the Missing Info!"
            txtMsg.alpha = 1        }
        else
        {
            txtMsg.text = "Succesfully Completed"
            txtMsg.alpha = 1 
        
        }
    }
    
    
    
    func Validation_Check() ->Int
    {
        print("validation check called")
        if txtFirst.text == "" || txtLast.text == "" || txtCountry.text == "" || txtAge.text == ""
        {
            x = 1
        }
        else
        {
            x = 0
        }
        print(x)
        return x
        
    }
    @IBAction func addBtn(_ sender: Any) {
        if Validation_Check() == 1
        {
            
        }
        else
        {
            txtView.text = "First Name :\(txtFirst.text!)\(txtLast.text!)\n Country:\(txtCountry.text!)\n Age : \(txtAge.text!)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
}

