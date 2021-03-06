//
//  AddLocationViewController.swift
//  dineTexas
//
//  Created by John Madden on 3/24/17.
//  Copyright © 2017 Hyun Joong Kim. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth
import Firebase


class AddLocationViewController: UIViewController, UITextFieldDelegate {
    var alertController:UIAlertController? = nil
    
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var hours: UITextField!
    @IBOutlet weak var website: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate = self
        address.delegate = self
        hours.delegate = self
        website.delegate = self

        name.autocorrectionType = UITextAutocorrectionType.no
        address.autocorrectionType = UITextAutocorrectionType.no
        hours.autocorrectionType = UITextAutocorrectionType.no
        website.autocorrectionType = UITextAutocorrectionType.no

        // Do any additional setup after loading the view.

    
    //add func_tap to viewDidLoad
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.func_tap))
        self.view.addGestureRecognizer(tap)
}

//tap outside to remove keyboard
    func func_tap(gesture: UITapGestureRecognizer) {
        name.resignFirstResponder()
        address.resignFirstResponder()
        hours.resignFirstResponder()
        website.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func uploadMenu(_ sender: Any) {
        displayAlert("This function will be implemented in the Final release")
    }
    @IBAction func Submit(_ sender: Any) {
        let rootRef = FIRDatabase.database().reference()
        let newMenu = rootRef.child("suggestions").childByAutoId()
        newMenu.child("name").setValue(name.text!)
        newMenu.child("address").setValue(address.text!)
        newMenu.child("hours").setValue(hours.text!)
        newMenu.child("website").setValue(website.text!)
        displayAlert("Thank you for submitting a new location. Our admins will review and post.")
    }
    
    
    func displayAlert (_ message: String){
        self.alertController = UIAlertController(title: message, message: "", preferredStyle: UIAlertControllerStyle.alert)
        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (action:UIAlertAction) in
            print("Ok Button Pressed 1");
        }
        self.alertController!.addAction(OKAction)
        self.present(alertController!, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
