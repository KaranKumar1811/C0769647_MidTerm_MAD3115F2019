//
//  AddCustomerDetailViewController.swift
//  C0769647_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class AddCustomerDetailViewController: UIViewController {

    @IBOutlet weak var firstNameTxtField: UITextField!
    
    @IBOutlet weak var emailTxtField: UITextField!
    
    @IBOutlet weak var lastNameTxtField: UITextField!
    
    
    
    private func saveCustomerButton()
    {
        let saveBtn=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(AddCustomerDetailViewController.saveCustomer(sender:)))
    
        navigationItem.rightBarButtonItem=saveBtn
        
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailTxtField.text!)
    }
    
    
    @objc
    func saveCustomer(sender: UIBarButtonItem)
    {
        
        let savebutton=UIStoryboard(name: "Main", bundle: nil)
        let customerListVC=savebutton.instantiateViewController(withIdentifier: "CustomerListVC") as! CustomerListViewController
        
        
        
        
        let first_Name = firstNameTxtField.text
        let last_Name = lastNameTxtField.text
        
        if isValidEmail()
        {
            
            let email = emailTxtField.text
            a1.addNewCustomers(FirstName: first_Name!, LastName: last_Name!, Email: email!)
            let alert = UIAlertController(title: "Customer Added", message: "Congrats!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alert:UIAlertAction!) in self.navigationController?.popViewController(animated: true)
                
            }))
            self.present(alert, animated: true)
        }
        else{
            let alert = UIAlertController(title: "Invalid Email Entered!", message: "Please Enter a Valid Email Address", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            
        }
    }
    
    
    let a1 = Singleton.getInstance()
    override func viewDidLoad() {
        super.viewDidLoad()
        saveCustomerButton()

        // Do any additional setup after loading the view.
    }
    

    

}
