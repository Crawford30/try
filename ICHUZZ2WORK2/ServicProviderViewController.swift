//
//  ServicProviderViewController.swift
//  ICHUZZ2WORK2
//
//  Created by JOEL CRAWFORD on 13/11/2019.
//  Copyright © 2019 ICHUZZ2WORK2. All rights reserved.
//

import UIKit

class ServicProviderViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var FullNameTextField: UITextField!
    @IBOutlet weak var CountryChooserTextField: UITextField!
    @IBOutlet weak var TelephoneNumberTextField: UITextField!
    @IBOutlet weak var EmailAddressTextField: UITextField!
    @IBOutlet weak var LocationChooserTextField: UITextField!
    @IBOutlet weak var PasswordOneTextField: UITextField!
    @IBOutlet weak var PasswordTwoTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //on hiiting the return key calls the delegate methid
        FullNameTextField.delegate = self;
        CountryChooserTextField.delegate = self;
        TelephoneNumberTextField.delegate = self;
        EmailAddressTextField.delegate = self;
        LocationChooserTextField.delegate = self;
        PasswordOneTextField.delegate = self;
        PasswordTwoTextField.delegate = self
        
        //Gesture to close textfield o  tap outside
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)

        //on hitting return key goes to next text field
        
        // Do any additional setup after loading the view.
    }
    //TO CONTINUE TO NEXT FIELD< IMPLEMENT textfieldshould return func
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case FullNameTextField: CountryChooserTextField.becomeFirstResponder()
        case CountryChooserTextField: TelephoneNumberTextField.becomeFirstResponder()
        case TelephoneNumberTextField: EmailAddressTextField.becomeFirstResponder()
        case EmailAddressTextField: LocationChooserTextField.becomeFirstResponder()
        case LocationChooserTextField: PasswordOneTextField.becomeFirstResponder()
        case PasswordOneTextField: PasswordTwoTextField.becomeFirstResponder()
        default:
            textField.becomeFirstResponder()
        }
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func SignUPAsAServiceProviderSignUpButton(_ sender: Any) {
    }
    
}
