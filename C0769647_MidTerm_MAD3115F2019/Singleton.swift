//
//  Singleton.swift
//  C0769647_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 Karan. All rights reserved.
//

import Foundation
class Singleton : NSObject
{
    
    private var customerDictionary  = [Int:Customer]()
    private static var object = Singleton()

    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return object
    }
    
    func addNewCustomers(FirstName : String, LastName : String, Email : String)
    {
        let cust = customerDictionary.count+1
        
        let temp = Customer(customer_Id: cust, customer_F_Name: FirstName, customer_L_Name: LastName, customer_Email: Email)
        self.addCustomer(customer: temp)
    }
    
    func addCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID!)
    }
    
    
    func returnCustomerObj(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if customerID == k
            {
                return v
            }
        }
        return nil
        
    }
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    
    
    func createCust()
    {
        let cust1 = Customer(customerID: 1, customerFName: "Ankita", customerLName: "Jain", customerEmail: "ankita@gmail.com ")
        AddCustomer(customer: cust1)
        let cust2 = Customer(customerID: 2, customerFName: "kamal", customerLName: "kaur", customerEmail: "kamal@gmail.com ")
        AddCustomer(customer: cust2)
        let cust3 = Customer(customerID: 3, customerFName: "Karan", customerLName: "Kumar", customerEmail: "karan321@gmail.com ")
        AddCustomer(customer: cust3)
        let cust4 = Customer(customerID: 4, customerFName: "Sandeep", customerLName: "Singh", customerEmail: "sandeep@gmail.com ")
        AddCustomer(customer: cust4)
        
    }
    
}
