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
    
}
