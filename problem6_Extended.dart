/*
problem link:https://leetcode.com/problems/third-maximum-number/
*/
class Solution {
  int thirdMax(List<int> nums) {
    nums.sort();
    Set<int> sett ={};
    sett.addAll(nums);
    List<int> local = sett.toList();
    if(local.length<3)return local[local.length-1];
    else return local[local.length-3];
    
  }
}