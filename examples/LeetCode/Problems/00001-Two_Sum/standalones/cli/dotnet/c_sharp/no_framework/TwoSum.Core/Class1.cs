namespace TwoSum.Core;

public class Class1
{
    public int[] TwoSum(int[] nums, int target)
    {
        // Using a hash map to store previously seen values and their indices
        var numToIndex = new Dictionary<int, int>();
        
        for (int i = 0; i < nums.Length; i++)
        {
            int complement = target - nums[i];
            
            // If we've seen the complement before, we found our answer
            if (numToIndex.ContainsKey(complement))
            {
                return new int[] { numToIndex[complement], i };
            }
            
            // Store current number and its index
            numToIndex[nums[i]] = i;
        }
        
        // This should never be reached given the problem constraints
        throw new ArgumentException("No two sum solution found");
    }
}
