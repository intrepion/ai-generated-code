package main

import "testing"

func TestTwoSum(t *testing.T) {
    // Test case 1
    nums1 := []int{2, 7, 11, 15}
    target1 := 9
    expected1 := []int{0, 1}
    result1 := twoSum(nums1, target1)
    
    if len(result1) != 2 || result1[0] != expected1[0] || result1[1] != expected1[1] {
        t.Errorf("Expected %v, got %v", expected1, result1)
    }
    
    // Test case 2
    nums2 := []int{3, 2, 4}
    target2 := 6
    expected2 := []int{1, 2}
    result2 := twoSum(nums2, target2)
    
    if len(result2) != 2 || result2[0] != expected2[0] || result2[1] != expected2[1] {
        t.Errorf("Expected %v, got %v", expected2, result2)
    }
    
    // Test case 3
    nums3 := []int{3, 3}
    target3 := 6
    expected3 := []int{0, 1}
    result3 := twoSum(nums3, target3)
    
    if len(result3) != 2 || result3[0] != expected3[0] || result3[1] != expected3[1] {
        t.Errorf("Expected %v, got %v", expected3, result3)
    }
    
    // Test case 4: No solution (should not happen due to problem constraints)
    nums4 := []int{1, 2, 3}
    target4 := 10
    result4 := twoSum(nums4, target4)
    
    // In a real case, this should return [-1, -1] (though shouldn't happen with valid input)
    if len(result4) != 2 || result4[0] != -1 || result4[1] != -1 {
        t.Errorf("Unexpected result for no solution case: %v", result4)
    }
}

func TestTwoSumPerformance(t *testing.T) {
    // Test with a larger array to verify O(n) performance
    nums := make([]int, 1000)
    for i := 0; i < 1000; i++ {
        nums[i] = i
    }
    target := 999
    
    result := twoSum(nums, target)
    
    // In our algorithm, we're looking for two numbers that sum to 999
    // We should find indices that correspond to values that sum to 999
    // The best solution is indices 499 and 500 since 499 + 500 = 999
    if len(result) != 2 || result[0] != 499 || result[1] != 500 {
        t.Errorf("Performance test failed: Expected indices [499, 500], got %v", result)
    }
}