/// Two Sum Problem Implementation
///
/// Given an array of integers nums and an integer target,
/// return indices of the two numbers such that they add up to target.
///
/// Time Complexity: O(n) using HashMap
/// Space Complexity: O(n)

/// Returns both indices as a list
List<int> twoSumIndices(List<int> nums, int target) {
  Map<int, int> numToIndex = {};
  
  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    
    if (numToIndex.containsKey(complement)) {
      return [numToIndex[complement]!, i];
    }
    
    numToIndex[nums[i]] = i;
  }
  
  return []; // No solution found
}

/// Validates that indices are within bounds and sum to target
bool validateSolution(List<int> nums, List<int> indices, int target) {
  if (indices.isEmpty || indices.length < 2) {
    return false;
  }
  
  // Validate indices are within bounds
  for (int index in indices) {
    if (index < 0 || index >= nums.length) {
      return false;
    }
  }
  
  // Validate that values at indices sum to target
  int sum = 0;
  for (int index in indices) {
    sum += nums[index];
  }
  
  return sum == target;
}

void main() {
  // Example usage
  List<int> nums1 = [2, 7, 11, 15];
  int target1 = 9;
  
  List<int> result1 = twoSumIndices(nums1, target1);
  print('Input: nums = $nums1, target = $target1');
  print('Output: [${result1.join(', ')}]');
  print('Valid: ${validateSolution(nums1, result1, target1)}');
  print('');
  
  List<int> nums2 = [3, 2, 4];
  int target2 = 6;
  
  List<int> result2 = twoSumIndices(nums2, target2);
  print('Input: nums = $nums2, target = $target2');
  print('Output: [${result2.join(', ')}]');
  print('Valid: ${validateSolution(nums2, result2, target2)}');
  print('');
  
  List<int> nums3 = [3, 3];
  int target3 = 6;
  
  List<int> result3 = twoSumIndices(nums3, target3);
  print('Input: nums = $nums3, target = $target3');
  print('Output: [${result3.join(', ')}]');
  print('Valid: ${validateSolution(nums3, result3, target3)}');
  print('');
}