class Solution {
  List<int> getConcatenation(List<int> nums) {
    List<int> ans = [...nums];
    ans.addAll(nums);
    return ans;

  }
}