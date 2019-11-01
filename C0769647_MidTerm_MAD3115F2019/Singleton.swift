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
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return object
    }
    
    func addNewCustomers(FirstName : String, LastName : String, Email : String)
    {
       
    }
}
