/*
problem link: https://leetcode.com/problems/third-maximum-number/
*/
class Solution {
  int thirdMax(List<int> nums) {
    List<int> local = [];
    Map<int,int> mp = {};
    for(int i=0;i<nums.length;i++)
    {
        mp[nums[i]] = (mp[nums[i]] ?? 0)+1;
        int value = mp[nums[i]] ?? 0;
        if(value<2)
        local.add(nums[i]);
    }
    local.sort();
    if(local.length<3)return local[local.length-1];
    else return local[local.length-3];
    
  }
}