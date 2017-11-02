//
//  FactorialsAndRecursion.swift
//  Algorithms
//
//  Created by Darragh on 11/2/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import Foundation

func factorialOfValue(value: UInt) -> UInt {
    
    if value == 0 {
        return 1
    }
    
    var product: UInt = 1
    for i in 1...value {
        product = product * i
    }
    
    return product
}

func recursiveFactorialOfValue(value: UInt) UInt {
    
    if value == 0 {
        return 1
    }
    
    return value * recursiveFactorialOfValue(value - 1)
}

print(factorialOfValue(value: 5))
print(recursiveFactorialOfValue(value: 5))

















































