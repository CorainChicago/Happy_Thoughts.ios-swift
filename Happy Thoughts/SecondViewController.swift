//
//  SecondViewController.swift
//  Happy Thoughts
//
//  Created by Cora Hays-Magan on 8/11/16.
//  Copyright © 2016 c.haysmagan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtDescription: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddThought_click(sender: UIButton){
        thoughtMgr.addThought(txtName.text!, description: txtDescription.text!)
        self.view.endEditing(true)
        txtName.text = ""
        txtDescription.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    // Button Touch to Remove keyboard
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

