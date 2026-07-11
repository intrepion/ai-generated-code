using System;
using TwoSum.Core;

Console.WriteLine("Two Sum Problem Implementation");

var solution = new Class1();

// Example 1: [2,7,11,15], target = 9
int[] nums1 = {2, 7, 11, 15};
int target1 = 9;
int[] result1 = solution.TwoSum(nums1, target1);
Console.WriteLine($"Indices: [{result1[0]}, {result1[1]}]");

// Example 2: [3,2,4], target = 6
int[] nums2 = {3, 2, 4};
int target2 = 6;
int[] result2 = solution.TwoSum(nums2, target2);
Console.WriteLine($"Indices: [{result2[0]}, {result2[1]}]");

// Example 3: [3,3], target = 6
int[] nums3 = {3, 3};
int target3 = 6;
int[] result3 = solution.TwoSum(nums3, target3);
Console.WriteLine($"Indices: [{result3[0]}, {result3[1]}]");

Console.WriteLine("Press any key to continue...");
Console.ReadKey();