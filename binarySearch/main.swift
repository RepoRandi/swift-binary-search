//
//  main.swift
//  binarySearch
//
//  Created by Randi Maulana Akbar on 07/01/22.
//

import Foundation

let numbers = [1, 2, 4, 6, 8 , 9, 11, 13, 16, 17, 20]
var hundred = [Int]()
for i in 1...100 {
    hundred.append(i)
}

func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        print("middleValue: \(middleValue)")
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(array[leftIndex]), \(array[rightIndex])]")
        
        if middleValue == searchValue {
            return true
        }
        if searchValue < middleIndex {
            rightIndex = middleIndex - 1
        }
        if searchValue > middleIndex {
            leftIndex = middleIndex + 1
        }
    }
    return false
}
