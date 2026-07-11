package main

import "fmt"

// twoSum returns the indices of two numbers that add up to the target
func twoSum(nums []int, target int) []int {
    // Using a map to store value and its index
    numToIndex := make(map[int]int)
    
    for i, num := range nums {
        // Calculate the complement needed
        complement := target - num
        
        // Check if we've seen the complement before
        if index, ok := numToIndex[complement]; ok {
            return []int{index, i}
        }
        
        // Store current number and its index
        numToIndex[num] = i
    }
    
    // This should never happen given the problem constraints
    return []int{-1, -1}
}

func main() {
    // Example 1
    nums1 := []int{2, 7, 11, 15}
    target1 := 9
    result1 := twoSum(nums1, target1)
    fmt.Printf("Input: nums = %v, target = %d\n", nums1, target1)
    fmt.Printf("Output: %v\n\n", result1)
    
    // Example 2
    nums2 := []int{3, 2, 4}
    target2 := 6
    result2 := twoSum(nums2, target2)
    fmt.Printf("Input: nums = %v, target = %d\n", nums2, target2)
    fmt.Printf("Output: %v\n\n", result2)
    
    // Example 3
    nums3 := []int{3, 3}
    target3 := 6
    result3 := twoSum(nums3, target3)
    fmt.Printf("Input: nums = %v, target = %d\n", nums3, target3)
    fmt.Printf("Output: %v\n", result3)
}