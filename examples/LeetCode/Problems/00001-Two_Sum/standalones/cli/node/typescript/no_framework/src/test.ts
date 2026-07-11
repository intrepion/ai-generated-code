import { twoSum } from "./main";

// Test cases
function runTests(): void {
    console.log("Running tests...");
    
    // Test Case 1
    const test1 = twoSum([2, 7, 11, 15], 9);
    console.log("Test 1 - Expected: [0, 1], Got:", test1);
    if (test1[0] !== 0 || test1[1] !== 1) {
        throw new Error("Test 1 failed");
    }
    
    // Test Case 2
    const test2 = twoSum([3, 2, 4], 6);
    console.log("Test 2 - Expected: [1, 2], Got:", test2);
    if (test2[0] !== 1 || test2[1] !== 2) {
        throw new Error("Test 2 failed");
    }
    
    // Test Case 3
    const test3 = twoSum([3, 3], 6);
    console.log("Test 3 - Expected: [0, 1], Got:", test3);
    if (test3[0] !== 0 || test3[1] !== 1) {
        throw new Error("Test 3 failed");
    }
    
    // Test Case 4
    const test4 = twoSum([1, 2, 3, 4, 5], 8);
    console.log("Test 4 - Expected: [2, 3], Got:", test4);
    if (test4[0] !== 2 || test4[1] !== 3) {
        throw new Error("Test 4 failed");
    }
    
    // Test Case 5 - Negative numbers
    const test5 = twoSum([-1, -2, 3, 4], 2);
    console.log("Test 5 - Expected: [0, 3], Got:", test5);
    if (test5[0] !== 0 || test5[1] !== 3) {
        throw new Error("Test 5 failed");
    }
    
    console.log("All tests passed!");
}

// Run tests
runTests();