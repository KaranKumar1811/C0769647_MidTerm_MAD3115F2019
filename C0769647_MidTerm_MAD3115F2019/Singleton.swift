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
        
        let temp = Customer(customerId: cust, customerFirstName: FirstName, customerLastName: LastName, customerEmail: Email)
        self.addCustomer(customer: temp)
    }
    
    func addCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerId!)
    }
    
    
    func returnCustomerObj(customerID : Int) -> Customer?
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
        let cust1 = Customer(customerId: 1, customerFirstName: "Sandeep", customerLastName: "Singh", customerEmail: "sandeep123@gmail.com ")
        addCustomer(customer: cust1)
        let cust2 = Customer(customerId: 2, customerFirstName: "Ankita", customerLastName: "Jain", customerEmail: "ankita123@gmail.com ")
        addCustomer(customer: cust2)
        let cust3 = Customer(customerId: 3, customerFirstName: "Karan", customerLastName: "Kumar", customerEmail: "karan123@gmail.com ")
        addCustomer(customer: cust3)
        let cust4 = Customer(customerId: 4, customerFirstName: "Kamal", customerLastName: "Kaur", customerEmail: "kamal123@gmail.com ")
        addCustomer(customer: cust4)
        
    }
    
}
