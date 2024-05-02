/*
concatenation of arrays: https://leetcode.com/problems/concatenation-of-array/description/
*/

class Solution {
  List<int> getConcatenation(List<int> nums) {
    List<int> ans = List.generate(2*nums.length,(index){
        if(index<nums.length)
        {
            return nums[index];
        }
        else 
        {
            return nums[index-nums.length];
        }
    });
    return ans;
    
  }
}