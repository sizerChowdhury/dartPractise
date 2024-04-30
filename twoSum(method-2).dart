class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> ans = [];
    nums.asMap().forEach((i, num1) {
      nums.asMap().forEach((j, num2) {
        if (i < j && num1 + num2 == target) {
          ans.add(i);
          ans.add(j);
        }
      });
    });
    return ans;
  }
}
