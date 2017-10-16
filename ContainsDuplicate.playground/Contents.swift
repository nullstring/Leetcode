//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
}

let sol = Solution()
sol.containsDuplicate([1, 2, 3])
sol.containsDuplicate([1, 2, 2])


