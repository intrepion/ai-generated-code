# Two Sum Problem Implementation

This is a TypeScript implementation of the Two Sum problem without any framework.

## Problem Description

Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

## Approach

- **Time Complexity:** O(n)
- **Space Complexity:** O(n)

Uses a Map/Hash Map to store values and their indices as we iterate through the array. For each element, we calculate its complement (target - current value) and check if we've seen that complement before.

## Implementation

The `twoSum` function:

1. Creates a Map to store values and indices
2. Iterates through the array
3. For each element, calculates the complement needed
4. Checks if we've already seen that complement
5. If so, returns the indices
6. If not, stores the current element and index

## Usage

```ts
const result = twoSum([2, 7, 11, 15], 9);
console.log(result); // [0, 1]
```

## Running the code

1. Install dependencies: npm install
2. Build: npm run build
3. Run: npm start

## Test Cases

- `[2, 7, 11, 15], target = 9` → `[0, 1]`
- `[3, 2, 4], target = 6` → `[1, 2]`
- `[3, 3], target = 6` → `[0, 1]`
- `[1, 2, 3, 4, 5], target = 8` → `[2, 3]`
- `[-1, -2, 3, 4], target = 2` → `[0, 3]`