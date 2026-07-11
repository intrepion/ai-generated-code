function twoSum(nums: number[], target: number): number[] {
    // Validate input
    if (!nums || nums.length < 2) {
        throw new Error("Invalid input array");
    }
    
    // Use a Map to store values and their indices
    const numMap = new Map<number, number>();
    
    for (let i = 0; i < nums.length; i++) {
        const complement = target - nums[i];
        
        // If we've seen the complement before, we found our answer
        if (numMap.has(complement)) {
            return [numMap.get(complement)!, i];
        }
        
        // Store the current number and its index
        numMap.set(nums[i], i);
    }
    
    // This should never be reached given the problem constraints
    throw new Error("No two sum solution found");
}

// Export for testing
export { twoSum };

// Example usage
console.log("Example usage:");
console.log("nums = [2, 7, 11, 15], target = 9");
console.log("Result:", twoSum([2, 7, 11, 15], 9));

console.log("nums = [3, 2, 4], target = 6");
console.log("Result:", twoSum([3, 2, 4], 6));

console.log("nums = [3, 3], target = 6");
console.log("Result:", twoSum([3, 3], 6));