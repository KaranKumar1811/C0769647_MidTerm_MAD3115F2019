//
//  CustomerListViewController.swift
//  C0769647_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class CustomerListViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    
    
    
    
    @IBOutlet weak var customerList: UITableView!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Customer List !"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return temp.returnCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let a = temp.returnCustomerObj(customerID: Int(indexPath.row+1))
        let cells = tableView.dequeueReusableCell(withIdentifier: "CustCell", for: indexPath)
        cells.textLabel?.text = (a?.full_Name)!
        return cells
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowselect=UIStoryboard(name: "Main", bundle: nil)
        let detailsVC=rowselect.instantiateViewController(withIdentifier: "detialsOfCustomerVC") as! ShowCustomerDetailsViewController
        detailsVC.customerdetails=temp.returnCustomerObj(customerID: indexPath.row+1)!
        navigationController?.pushViewController(detailsVC, animated: true)
        
        
      
    }
    
    
    
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
        let btnAddCustomer=UIBarButtonItem(title: "Add Customer", style: .done, target: self, action: #selector(CustomerListViewController.addCustomer(sender:)))
            navigationItem.rightBarButtonItem=btnAddCustomer
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
        
       
        customerList.delegate=self
        customerList.dataSource=self
        navigationItem.hidesBackButton=true
        addLogoutButton()
        addCustomerButton()
        
        
    }
   
    override func viewWillAppear(_ animated: Bool) {
        customerList.reloadData()
    }
      

}
