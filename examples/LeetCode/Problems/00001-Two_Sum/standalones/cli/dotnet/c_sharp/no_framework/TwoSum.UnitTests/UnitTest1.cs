namespace TwoSum.UnitTests;

using Xunit;
using TwoSum.Core;

public class UnitTest1
{
    [Fact]
    public void Test1()
    {
        var solution = new Class1();
        
        // Test case 1: [2,7,11,15], target = 9
        int[] nums1 = {2, 7, 11, 15};
        int target1 = 9;
        int[] expected1 = {0, 1};
        int[] result1 = solution.TwoSum(nums1, target1);
        Assert.Equal(expected1, result1);
        
        // Test case 2: [3,2,4], target = 6
        int[] nums2 = {3, 2, 4};
        int target2 = 6;
        int[] expected2 = {1, 2};
        int[] result2 = solution.TwoSum(nums2, target2);
        Assert.Equal(expected2, result2);
        
        // Test case 3: [3,3], target = 6
        int[] nums3 = {3, 3};
        int target3 = 6;
        int[] expected3 = {0, 1};
        int[] result3 = solution.TwoSum(nums3, target3);
        Assert.Equal(expected3, result3);
    }
}
