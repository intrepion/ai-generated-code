import 'package:test/test.dart';

import '../lib/main.dart';

void main() {
  group('Two Sum Tests', () {
    test('Example 1', () {
      List<int> nums = [2, 7, 11, 15];
      int target = 9;
      List<int> expected = [0, 1];
      List<int> actual = twoSumIndices(nums, target);
      expect(actual, equals(expected));
    });

    test('Example 2', () {
      List<int> nums = [3, 2, 4];
      int target = 6;
      List<int> expected = [1, 2];
      List<int> actual = twoSumIndices(nums, target);
      expect(actual, equals(expected));
    });

    test('Example 3', () {
      List<int> nums = [3, 3];
      int target = 6;
      List<int> expected = [0, 1];
      List<int> actual = twoSumIndices(nums, target);
      expect(actual, equals(expected));
    });

    test('No solution', () {
      List<int> nums = [1, 2, 3];
      int target = 10;
      List<int> expected = [];
      List<int> actual = twoSumIndices(nums, target);
      expect(actual, equals(expected));
    });

    test('Negative numbers', () {
      List<int> nums = [-1, 0, 1, 2, -1, -4];
      int target = 0;
      List<int> expected = [0, 2]; // -1 + 1 = 0
      List<int> actual = twoSumIndices(nums, target);
      expect(actual, equals(expected));
    });

    test('Large numbers', () {
      List<int> nums = [1000000000, 2000000000];
      int target = 3000000000;
      List<int> expected = [0, 1];
      List<int> actual = twoSumIndices(nums, target);
      expect(actual, equals(expected));
    });

    test('Same element twice', () {
      List<int> nums = [2, 4, 3, 2];
      int target = 4;
      List<int> expected = [0, 3];
      List<int> actual = twoSumIndices(nums, target);
      expect(actual, equals(expected));
    });

    test('Validate solution correctness', () {
      List<int> nums = [2, 7, 11, 15];
      int target = 9;
      List<int> indices = twoSumIndices(nums, target);
      bool isValid = validateSolution(nums, indices, target);
      expect(isValid, true);
    });
  });
}