/*
Problem link: https://leetcode.com/problems/two-sum/
*/

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> ans = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          ans.add(i);
          ans.add(j);
          break;
        }
      }
      if (ans.isNotEmpty) break;
    }
    return ans;
  }
}
