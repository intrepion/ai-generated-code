use std::collections::HashMap;

fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
    let mut num_to_index = HashMap::new();
    
    for (i, &num) in nums.iter().enumerate() {
        let complement = target - num;
        
        if let Some(&j) = num_to_index.get(&complement) {
            return vec![j as i32, i as i32];
        }
        
        num_to_index.insert(num, i);
    }
    
    // This should never happen according to problem constraints
    vec![-1, -1]
}

fn main() {
    // Test case 1
    let nums1 = vec![2, 7, 11, 15];
    let target1 = 9;
    let result1 = two_sum(nums1, target1);
    println!("Result1: {:?}", result1);
    
    // Test case 2
    let nums2 = vec![3, 2, 4];
    let target2 = 6;
    let result2 = two_sum(nums2, target2);
    println!("Result2: {:?}", result2);
    
    // Test case 3
    let nums3 = vec![3, 3];
    let target3 = 6;
    let result3 = two_sum(nums3, target3);
    println!("Result3: {:?}", result3);
}

#[cfg(test)]
mod tests {
    use super::*;
    
    #[test]
    fn test_two_sum() {
        let nums1 = vec![2, 7, 11, 15];
        let target1 = 9;
        let result1 = two_sum(nums1, target1);
        assert_eq!(result1, vec![0, 1]);
        
        let nums2 = vec![3, 2, 4];
        let target2 = 6;
        let result2 = two_sum(nums2, target2);
        assert_eq!(result2, vec![1, 2]);
        
        let nums3 = vec![3, 3];
        let target3 = 6;
        let result3 = two_sum(nums3, target3);
        assert_eq!(result3, vec![0, 1]);
    }
}