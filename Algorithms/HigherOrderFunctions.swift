//
//  HigherOrderFunctions.swift
//  Algorithms
//
//  Created by Darragh Blake on 15/12/2017.
//  Copyright © 2017 Darragh. All rights reserved.
//

import Foundation

let numbers = [1, 2, 3, 4, 3, 3]

// 1. filter int [3 ,3 ,3], then filter into [2, 4] (even numbers)
let filtered = numbers.filter({return $0 == 3})
let filtered2 = numbers.filter({return $0 % 2 == 0})

// 2. transform [1, 2, 3, 4] -> [2, 4, 6, 8] using map
let transform = [1, 2, 3, 4].map({return $0 * 2})

// 3. sum [1, 2, 3, 4] -> 10 using reduce
let sum = [1, 2, 3, 4].reduce(0, {sum, number in sum + number})








