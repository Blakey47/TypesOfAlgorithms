//
//  FibonacciSequence.swift
//  Algorithms
//
//  Created by Darragh on 11/2/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import Foundation

func fibForNumSteps(numSteps: Int) -> [Int] {
    var sequence = [0, 1]
    if numSteps <= 1 {
        return sequence
    }
    for _ in 0...numSteps - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
    }
    return sequence
}

func fibRecursionForNumSteps(numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    return [first + second] + fibRecursionForNumSteps(numSteps: numSteps - 1, first: second, second: first + second)
}

[0, 1] + fibRecursionForNumSteps(numSteps: 10, first: 0, second: 1)

fibForNumSteps(numSteps: 10)

