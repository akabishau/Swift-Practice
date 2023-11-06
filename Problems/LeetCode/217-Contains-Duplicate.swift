//  217-Contains-Duplicate.swift
//  Created by Aleksey Kabishau on 11/6/23.

/*
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 
Example 1:
Input: nums = [1,2,3,1]
Output: true

Constraints:
1 <= nums.length <= 105
-109 <= nums[i] <= 109
*/

import Foundation

// using hashMap
func containsDuplicate(_ nums: [Int]) -> Bool {
	if nums.count == 1 {
		return false
	}
	
	var hashMap: [Int: Bool] = [:]
	
	for i in nums {
		if hashMap[i] == true {
			return true
		} else {
			hashMap[i] = true
		}
	}
	return false
}

// using conversion to Set
func containsDuplicate(_ nums: [Int]) -> Bool {
	if nums.count == 1 {
		return false
	}
	return Set(nums).count != nums.count
}
