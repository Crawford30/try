//
//  ViewController.swift
//  ICHUZZ2WORK2
//
//  Created by JOEL CRAWFORD on 13/11/2019.
//  Copyright © 2019 ICHUZZ2WORK2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailaddress: UITextField!
    @IBOutlet weak var password: UITextField!
    

    override func viewDidLoad() {
       // self.setupToHideKeyboardOnTapOnView()
        super.viewDidLoad()
        //on hitting the return key, goes yo next field
        emailaddress.delegate = self;
        password.delegate = self
        
        // Do any additional setup after loading the view.
//        let tapper = UITapGestureRecognizer(target: self.view, action:#selector(endEditing))
//        tapper.cancelsTouchesInView = false
//        view.addGestureRecognizer(tapper)
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
        
    }
    
    //To continue to next field on hit return or enter ket
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailaddress: password.becomeFirstResponder()
    
        default:
            textField.becomeFirstResponder()
        }
        return true
    
    }
    
    @IBAction func SignInButton(_ sender: UIButton) {
        //let userEmail = emailaddress.text;
        //let userPassword = password.text;
        
//        //check for empty fields
//        if(userEmail?.isEmpty || userPassword?.isEmpty) {
//            //display alert messages
//            displayAlertMessage("All Fields Are required")
//             return
//
//        }
//
//        //store data
//        //display alert messages with confirmation
    }
    

}
//func displayAlertMessage(userMessage: String) -> String {
//    var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert);
//    //ok action
//    let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil);
//    myAlert.addAction(okAction);
//    //self.presentViewController(myAlert, animated: true, completion: nil)
    
    
    
    
//}

//extension UIViewController
//{
//    func setupToHideKeyboardOnTapOnView()
//    {
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
//            target: self,
//            action: #selector(UIViewController.dismissKeyboard))
//
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
//    }
//
//    @objc func dismissKeyboard()
//    {
//        view.endEditing(true)
//    }
//}


