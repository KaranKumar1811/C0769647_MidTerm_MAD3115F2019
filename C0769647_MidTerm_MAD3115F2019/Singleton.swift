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
    
    
    func createCustomer()
    {
        let I1 = Internet(Id: 10, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 23.43, providerName: "Bell", internetUsed: 232)
        let M1: Mobile = Mobile(Id: 1, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 74.52, mobileManufacturer: "Samsung S10", planName: "Talk + Data", mobileNumber: "+12345678901", internetUsed: 23, minuteUsed: 34)
        let M2: Mobile = Mobile(Id: 2, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 34.98, mobileManufacturer: "LG", planName: "LTE+3G 9.5GB Promo plan", mobileNumber: "+14567431985", internetUsed: 67, minuteUsed: 456)
        
        let I3: Internet = Internet(Id: 1, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 23.09, providerName: "Bell", internetUsed: 34)
        let I4: Internet = Internet(Id: 2, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 236.09, providerName: "Rogers", internetUsed: 765)
        
        let H5: Hydro = Hydro(Id: 1, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 765.98, agencyName: "Planet Energy", unitconsumed: 56)
        let H6: Hydro = Hydro(Id: 2, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 476.8, agencyName: "Energizer", unitconsumed: 98)
        
        let cust1 = Customer(customerId: 1, customerFirstName: "Sandeep", customerLastName: "Singh", customerEmail: "sandeep123@gmail.com ")
        addCustomer(customer: cust1)
        cust1.addBill(Bill: M1)
        cust1.addBill(Bill: H6)
       // cust1.addBill(Bill: I3)
        let cust2 = Customer(customerId: 2, customerFirstName: "Ankita", customerLastName: "Jain", customerEmail: "ankita123@gmail.com ")
        addCustomer(customer: cust2)
       // cust2.addBill(Bill: I3)
        cust2.addBill(Bill: I4)
        cust2.addBill(Bill: M1)
        
        let cust3 = Customer(customerId: 3, customerFirstName: "Karan", customerLastName: "Kumar", customerEmail: "karan123@gmail.com ")
        addCustomer(customer: cust3)
        cust3.addBill(Bill: I4)
        cust3.addBill(Bill: M1)
        cust3.addBill(Bill: H6)
        
        let cust4 = Customer(customerId: 4, customerFirstName: "Kamal", customerLastName: "Kaur", customerEmail: "kamal123@gmail.com ")
        addCustomer(customer: cust4)
        
        cust4.addBill(Bill: M1)
        cust4.addBill(Bill: M2)
      //  cust4.addBill(Bill: I3)
       // cust4.addBill(Bill: I4)
        //cust4.addBill(Bill: H6)
        
      
       
      
        
        
 
    }
    
}
