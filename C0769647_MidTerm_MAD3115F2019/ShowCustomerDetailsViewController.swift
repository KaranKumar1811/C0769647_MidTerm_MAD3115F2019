//
//  ShowCustomerDetailsViewController.swift
//  C0769647_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class ShowCustomerDetailsViewController: UIViewController {
    var customerdetails:Customer?=nil
    @IBOutlet weak var idView: UILabel!
    @IBOutlet weak var firstNameView: UILabel!
    @IBOutlet weak var lastNameView: UILabel!
    @IBOutlet weak var emailView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        idView.text="\(String(describing: customerdetails!.customerId!))"
        firstNameView.text=customerdetails?.customer_F_Name
        lastNameView.text=customerdetails?.customer_L_Name
        emailView.text=customerdetails?.customer_Email
        

        // Do any additional setup after loading the view.
    }
    

    

}
