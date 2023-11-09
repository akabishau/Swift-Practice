//  027-Remove-Element.swift
//  Created by Aleksey Kabishau on 11/8/23.

/*
Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:
Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
Return k.
 
Example 1:
Input: nums = [3,2,2,3], val = 3
Output: 2, nums = [2,2]
Explanation: Your function should return k = 2, with the first two elements of nums being 2.
*/


// solution 1:
// using 2 pointers
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
	var j = 0
	for i in 0..<nums.count {
		if nums[i] != val {
			nums[j] = nums[i]
			j += 1
		}
	}
	return j
}


// solution 2:
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
	nums.removeAll { $0 == val}
	return nums.count
}
