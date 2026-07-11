import '../lib/main.dart';

void main() {
  // Run the example usage from main.dart
  print('Two Sum Application');
  print('====================');
  print('');
  
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