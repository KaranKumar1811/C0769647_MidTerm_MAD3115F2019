//
//  ViewController.swift
//  C0769647_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBAction func loginBtn(_ sender: UIButton) {
        let clvc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "CustomerListVC")
        self.navigationController?.pushViewController(clvc, animated: true)
    }
    
    @IBOutlet weak var passwordTxtField: UITextField!
    
    @IBOutlet weak var usernameTxtField: UITextField!
    
    var userDefault : UserDefaults!
    
    @IBAction func rememberMeSwitch(_ sender: UISwitch) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let getdata =  Singleton.getInstance()
        getdata.createCustomer()
        userDefault = UserDefaults.standard
        
    }
    
    func readInfoPlist() -> Bool{
       
            
            
        }
        return false    }
    
    
    
}


