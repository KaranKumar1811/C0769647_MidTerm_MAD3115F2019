//
//  CustomerListViewController.swift
//  C0769647_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class CustomerListViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    private func addLogoutButton()
    {
        let LogoutBtn=UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(CustomerListViewController.logout(sender:)))
        
        navigationItem.leftBarButtonItem=LogoutBtn
    }
    
    
    @objc func logout(sender: UIBarButtonItem)
    {
        navigationController?.popViewController(animated: true)
    }
    
    
    private func addCustomerButton()
    {
        let btnLogout=UIBarButtonItem(title: "Add Customer", style: .done, target: self, action: #selector(CustomerListViewController.addCustomer(sender:)))
            navigationItem.rightBarButtonItem=btnLogout
    }
    
    @objc func addCustomer(sender: UIBarButtonItem)
    {
        
        let addbtn=UIStoryboard(name: "Main", bundle: nil)
        let addBarBtn=addbtn.instantiateViewController(withIdentifier: "addCustDetailVC") as! AddCustomerDetailViewController
        navigationController?.pushViewController(addBarBtn, animated: true)
        
    }
    
    var temp = Singleton.getInstance()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
   
    
      

}
