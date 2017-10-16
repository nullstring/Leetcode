//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if nums.count <= 1 {
            return false
        }
        
        let window = min(k+1, nums.count)
        var set = Set(nums[0..<window])
        if window == nums.count {
            return set.count < window
        }
        
        for i in 1...nums.count-window {
            set.remove(nums[i-1])
            set.insert(nums[i+window-1])
            if set.count < window {
                return true
            }
        }
        return false
    }
}

let sol = Solution()
sol.containsNearbyDuplicate([2, 2], 2)
