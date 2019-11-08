//
//  ShowCustomerDetailsViewController.swift
//  C0769647_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class ShowCustomerDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var customerdetails:Customer?=nil
    @IBOutlet weak var idView: UILabel!
    @IBOutlet weak var firstNameView: UILabel!
    @IBOutlet weak var lastNameView: UILabel!
    @IBOutlet weak var emailView: UILabel!
    @IBOutlet weak var billListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idView.text="\(String(describing: customerdetails!.customerId!))"
        firstNameView.text=customerdetails?.customer_F_Name
        lastNameView.text=customerdetails?.customer_L_Name
        emailView.text=customerdetails?.customer_Email
        
        self.billListTable.delegate=self
        self.billListTable.dataSource=self
        let rightButton = UIBarButtonItem(title: "Add Bill", style: UIBarButtonItem.Style.plain, target: self, action: #selector( self.goToAddBill))
        self.navigationItem.rightBarButtonItem = rightButton
        
    }
    let addBillBtn = UIBarButtonItem()
    
    @objc func goToAddBill(){
        self.performSegue(withIdentifier: "addBillVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ((customerdetails?.billDictionary.count)!)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "billCell")!
        let currentBill = customerdetails!.billDictionary[indexPath.row + 1]
    var detail = ""
        if currentBill?.billType == billTypes.Mobile{
            cell.textLabel?.numberOfLines = 12
            let mobileBill = currentBill as! Mobile
          detail = "\nBill Type : Mobile \nManufacturer Name : \(mobileBill.mobileManufacturer) \nPlan Name : \(mobileBill.planName) \nMobile Number : \(mobileBill.mobileNumber) \nInternet used : \(mobileBill.internetUsed.data()) \nMinutes Used : \(mobileBill.minuteUsed.minutes()) "
        } else {
            if currentBill?.billType == billTypes.Hydro{
                cell.textLabel?.numberOfLines = 12
                let hydroBill = currentBill as! Hydro
                detail = "\nBill Type : Hydro \nAgency Name : \(hydroBill.agencyName) \nUnit Consumed : \(hydroBill.unitconsumed.unit())"
            } else {
                if currentBill?.billType == billTypes.Internet{
                    cell.textLabel?.numberOfLines = 12
                    let internetBill = currentBill as! Internet
                    detail = "\nBill Type : Internet \nProvider Name : \(internetBill.providerName) \nInternet Used : \(internetBill.internetUsed.data())"
                }
            }
        }
        cell.textLabel?.text = "Bill ID : \(String(describing: currentBill!.Id)) \nBill Date : \(String(describing: currentBill!.billDate.getForamttedDate())) \nBill Total : \(String(describing: currentBill!.totalBillAmount.currency())) \(detail)"
        return cell
    }


    

}
