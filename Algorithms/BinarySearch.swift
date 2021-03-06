//
//  BinarySearch.swift
//  Algorithms
//
//  Created by Darragh on 11/1/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class BinarySearch: UIViewController {
    
    let number = [1 , 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(binarySearchForSearchValue(searchValue: 9, array: number))
        
    }
    
    func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
        
        var leftIndex = 0
        var rightIndex = array.count - 1
        
        while leftIndex <= rightIndex {
            
            let middleIndex = (leftIndex + rightIndex) / 2
            let middelValue = array[middleIndex]
            
            if middelValue == searchValue {
                return true
            }
            
            if searchValue < middelValue {
                rightIndex = middelValue - 1
            }
            
            if searchValue > middleIndex {
                leftIndex = middleIndex + 1
            }
            
        }
        
        return false
    }
    
}
