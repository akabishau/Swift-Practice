//  001-Two-Sum.swift
//  Created by Aleksey Kabishau on 11/6/23.

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.
 
 Example 1:
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 
*/

import Foundation


// solution 1: two loops, checking every pair; O(n^2)
func twoSum(nums: [Int], target: Int) -> [Int] {
	for i in 0..<nums.count {
		for j in ((i + 1)..<nums.count) {
			if nums[i] + nums[j] == target {
				return [i, j]
			}
		}
	}
	return []
}

// solution 2: hash map version, saving values as key and index as value
// O(n)
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
	var hashMap: [Int: Int] = [:]
	for (i, num) in nums.enumerated() {
		if let secondIndex = hashMap[target - num] {
			return [i, secondIndex]
		}
		hashMap[num] = i
	}
	return []
}
