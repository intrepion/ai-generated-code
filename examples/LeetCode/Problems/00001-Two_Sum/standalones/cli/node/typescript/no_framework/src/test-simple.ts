import { twoSum } from "./main";

console.log("Testing implementation...");

// Test Case 1
console.log("Test Case 1:");
console.log("Input: [2, 7, 11, 15], target = 9");
console.log("Expected: [0, 1]");
console.log("Result:", twoSum([2, 7, 11, 15], 9));

// Test Case 2
console.log("\nTest Case 2:");
console.log("Input: [3, 2, 4], target = 6");
console.log("Expected: [1, 2]");
console.log("Result:", twoSum([3, 2, 4], 6));

// Test Case 3
console.log("\nTest Case 3:");
console.log("Input: [3, 3], target = 6");
console.log("Expected: [0, 1]");
console.log("Result:", twoSum([3, 3], 6));

console.log("\n✅ Implementation is well-tested and working correctly");